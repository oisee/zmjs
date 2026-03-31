package jseval

// test262 conformance runner for ZMJS.
//
// Usage:
//   go test ./pkg/jseval/ -run TestTest262 -v
//
// The test262 suite is cloned in CI. Locally, set TEST262_PATH:
//   TEST262_PATH=/path/to/test262 go test ./pkg/jseval/ -run TestTest262 -v
//
// Without TEST262_PATH the test is skipped.

import (
	"os"
	"path/filepath"
	"regexp"
	"strings"
	"testing"
	"time"
)

// test262 harness: minimal assert + sta
const test262Harness = `
function assert(cond, msg) {
  if (!cond) throw new Error("Assertion failed: " + (msg || ""));
}
assert.sameValue = function(a, b, msg) {
  if (a !== b) throw new Error("Expected " + a + " === " + b + (msg ? ": " + msg : ""));
};
assert.notSameValue = function(a, b, msg) {
  if (a === b) throw new Error("Expected " + a + " !== " + b + (msg ? ": " + msg : ""));
};
assert.throws = function(ctor, fn, msg) {
  try { fn(); } catch(e) {
    if (ctor && !(e instanceof ctor)) throw new Error("Wrong exception type");
    return;
  }
  throw new Error("Expected exception not thrown" + (msg ? ": " + msg : ""));
};
function print(x) { console.log(x); }
`

// Features that ZMJS does not support — skip tests requiring these.
var unsupportedFeatures = []string{
	"regexp", "proxy", "reflect", "generator", "async", "promise",
	"symbol", "weakmap", "weakset", "weakref", "finalizationregistry",
	"dataview", "sharedarraybuffer", "atomics", "intl", "bigint",
	"import", "export", "class-fields", "class-methods-private",
	"destructuring-binding", "destructuring-assignment",
	"optional-catch-binding", "logical-assignment-operators",
	"numeric-separator-literal", "hashbang", "top-level-await",
	"for-in-order", "tail-call-optimization",
	"Array.prototype.flat", "Array.prototype.flatMap",
	"Object.fromEntries", "string-trimming",
	"computed-property-names", "shorthand-properties",
}

// Directories in test262/test/ that we can reasonably test.
var targetDirs = []string{
	"language/expressions/addition",
	"language/expressions/subtraction",
	"language/expressions/multiplication",
	"language/expressions/division",
	"language/expressions/modulus",
	"language/expressions/unary-minus",
	"language/expressions/unary-plus",
	"language/expressions/logical-and",
	"language/expressions/logical-or",
	"language/expressions/logical-not",
	"language/expressions/equal",
	"language/expressions/strict-equals",
	"language/expressions/strict-does-not-equals",
	"language/expressions/does-not-equals",
	"language/expressions/less-than",
	"language/expressions/greater-than",
	"language/expressions/less-than-or-equal",
	"language/expressions/greater-than-or-equal",
	"language/expressions/typeof",
	"language/expressions/conditional",
	"language/expressions/void",
	"language/expressions/null",
	"language/expressions/undefined",
	"language/statements/if",
	"language/statements/for",
	"language/statements/while",
	"language/statements/do-while",
	"language/statements/break",
	"language/statements/continue",
	"language/statements/return",
	"language/statements/switch",
	"language/statements/throw",
	"language/statements/try",
	"language/statements/variable",
	"language/statements/function",
	"language/literals/numeric",
	"language/literals/string",
	"language/literals/boolean",
	"language/literals/null",
}

var featuresRe = regexp.MustCompile(`(?i)features:\s*\[([^\]]*)\]`)
var negativeRe = regexp.MustCompile(`(?i)negative:`)
var moduleRe = regexp.MustCompile(`(?i)flags:.*\bmodule\b`)
var onlyStrictRe = regexp.MustCompile(`(?i)flags:.*\bonlyStrict\b`)
var rawRe = regexp.MustCompile(`(?i)flags:.*\braw\b`)

func TestTest262(t *testing.T) {
	root := os.Getenv("TEST262_PATH")
	if root == "" {
		t.Skip("TEST262_PATH not set — skipping test262 suite")
	}

	testDir := filepath.Join(root, "test")
	if _, err := os.Stat(testDir); err != nil {
		t.Skipf("test262 test dir not found at %s", testDir)
	}

	var total, passed, skipped, failed int
	var failures []string

	for _, dir := range targetDirs {
		fullDir := filepath.Join(testDir, dir)
		entries, err := os.ReadDir(fullDir)
		if err != nil {
			continue // directory might not exist
		}

		for _, e := range entries {
			if e.IsDir() || !strings.HasSuffix(e.Name(), ".js") {
				continue
			}

			path := filepath.Join(fullDir, e.Name())
			src, err := os.ReadFile(path)
			if err != nil {
				continue
			}
			content := string(src)

			// Skip: modules, raw, onlyStrict (we don't have strict mode)
			if moduleRe.MatchString(content) || rawRe.MatchString(content) || onlyStrictRe.MatchString(content) {
				skipped++
				continue
			}

			// Skip: negative tests (expected to throw — tricky to handle uniformly)
			if negativeRe.MatchString(content) {
				skipped++
				continue
			}

			// Skip: unsupported features
			skip := false
			if m := featuresRe.FindStringSubmatch(content); m != nil {
				feats := strings.ToLower(m[1])
				for _, uf := range unsupportedFeatures {
					if strings.Contains(feats, uf) {
						skip = true
						break
					}
				}
			}
			if skip {
				skipped++
				continue
			}

			total++
			code := test262Harness + "\n" + content

			type result struct {
				err    error
				panics string
			}
			ch := make(chan result, 1)
			go func() {
				var r result
				defer func() {
					if rec := recover(); rec != nil {
						r.panics = strings.TrimSpace(strings.ReplaceAll(
							strings.Join(strings.Fields(strings.ReplaceAll(strings.TrimSpace(content), "\n", " ")), " "),
							"  ", " "))
						if len(r.panics) > 80 {
							r.panics = r.panics[:80]
						}
					}
					ch <- r
				}()
				_, r.err = Eval(code)
			}()

			select {
			case r := <-ch:
				rel, _ := filepath.Rel(testDir, path)
				if r.panics != "" {
					failed++
					failures = append(failures, rel+": panic")
				} else if r.err != nil {
					failed++
					failures = append(failures, rel+": "+r.err.Error())
				} else {
					passed++
				}
			case <-time.After(2 * time.Second):
				failed++
				rel, _ := filepath.Rel(testDir, path)
				failures = append(failures, rel+": timeout")
			}
		}
	}

	t.Logf("test262: %d passed, %d failed, %d skipped (total attempted: %d)", passed, failed, skipped, total)

	if len(failures) > 0 && testing.Verbose() {
		t.Logf("\nFailures (first 20):")
		for i, f := range failures {
			if i >= 20 {
				t.Logf("  ... and %d more", len(failures)-20)
				break
			}
			t.Logf("  FAIL: %s", f)
		}
	}

	// Don't fail the test — report coverage. Fail only on regression.
	// Set MIN_PASS env to enforce a floor, e.g. MIN_PASS=100.
	if min := os.Getenv("TEST262_MIN_PASS"); min != "" {
		var minPass int
		if _, err := parseIntEnv(min, &minPass); err == nil && passed < minPass {
			t.Errorf("test262 regression: %d passed < minimum %d", passed, minPass)
		}
	}
}

func min262(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func parseIntEnv(s string, out *int) (interface{}, error) {
	n := 0
	for _, c := range s {
		if c < '0' || c > '9' {
			return nil, &parseErr{}
		}
		n = n*10 + int(c-'0')
	}
	*out = n
	return nil, nil
}

type parseErr struct{}

func (e *parseErr) Error() string { return "parse error" }
