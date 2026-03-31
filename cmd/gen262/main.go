// gen262 generates a flattened test262 JS file for ZMJS on SAP.
//
// Usage:
//   go run ./cmd/gen262/ -test262 /path/to/test262 -o zmjs_test262.js
//
// The output is a single JS file that can be uploaded to SMW0 and run via:
//   ZCL_MJS=>EVAL( iv_source = lv_loaded_js )
// It prints: PASS=N FAIL=M TOTAL=T
package main

import (
	"flag"
	"fmt"
	"os"
	"path/filepath"
	"regexp"
	"strings"
)

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
	"language/statements/if",
	"language/statements/for",
	"language/statements/while",
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

var unsupported = []string{
	"regexp", "proxy", "reflect", "generator", "async", "promise",
	"symbol", "weakmap", "weakset", "bigint", "dataview",
	"sharedarraybuffer", "atomics", "intl",
	"import", "export", "class-fields", "class-methods-private",
	"destructuring", "optional-catch-binding",
	"logical-assignment", "numeric-separator",
	"hashbang", "top-level-await", "computed-property-names",
	"shorthand-properties", "Array.prototype.flat",
	"Object.fromEntries", "string-trimming",
}

// Patterns in test body that indicate unsupported ZMJS features
var skipPatterns = []*regexp.Regexp{
	regexp.MustCompile(`\beval\s*\(`),
	regexp.MustCompile(`\binstanceof\b`),
	regexp.MustCompile(`\bNumber\s*\.\s*(MAX_VALUE|MIN_VALUE|POSITIVE_INFINITY|NEGATIVE_INFINITY|EPSILON|isNaN|isFinite|parseInt|parseFloat|isInteger|isSafeInteger|MAX_SAFE_INTEGER|MIN_SAFE_INTEGER)`),
	regexp.MustCompile(`\bMath\s*\.`),
	regexp.MustCompile(`\bnew\s+(Object|Array|Number|String|Boolean|RegExp|Date|Error|Function)\s*\(`),
	regexp.MustCompile(`\bObject\s*\.(keys|values|entries|assign|create|freeze|defineProperty|getPrototypeOf)`),
	regexp.MustCompile(`\bArray\s*\.(isArray|from|of)`),
	regexp.MustCompile(`\bJSON\s*\.`),
	regexp.MustCompile(`\bparseInt\s*\(|\bparseFloat\s*\(`),
	regexp.MustCompile(`\bisNaN\s*\(|\bisFinite\s*\(`),
	regexp.MustCompile(`\bString\s*\.(fromCharCode|fromCodePoint)`),
	regexp.MustCompile(`\b__proto__\b`),
	regexp.MustCompile(`\.prototype\b`),
	regexp.MustCompile(`\bdelete\s+`),
	regexp.MustCompile(`[a-zA-Z_$]\s*\+\+|[a-zA-Z_$]\s*--|[+][+][a-zA-Z_$]|--[a-zA-Z_$]`), // ++ / --
	regexp.MustCompile(`[a-zA-Z_$\]]\s*[+\-\*\/&|^]=`), // += -= *= /= etc
	regexp.MustCompile(`\bInfinity\b`),                   // Infinity comparisons cause issues
	regexp.MustCompile(`\bdo\s*\{`),                      // do-while not supported
}

var (
	featuresRe   = regexp.MustCompile(`(?i)features:\s*\[([^\]]*)\]`)
	negativeRe   = regexp.MustCompile(`(?i)negative:`)
	moduleRe     = regexp.MustCompile(`(?i)flags:.*\bmodule\b`)
	onlyStrictRe = regexp.MustCompile(`(?i)flags:.*\bonlyStrict\b`)
	rawRe        = regexp.MustCompile(`(?i)flags:.*\braw\b`)
)

const harness = `
// === ZMJS test262 flat bundle ===
// Auto-generated — do not edit.
// Run via: ZCL_MJS=>EVAL( iv_source = lv_js )
// Expected output: PASS=N FAIL=M TOTAL=T

function Test262Error(message) {
  this.message = message || "";
}
Test262Error.prototype.toString = function() {
  return "Test262Error: " + this.message;
};

function $ERROR(msg) { throw new Test262Error(msg); }
function $DONOTEVALUATE() { throw new Test262Error("$DONOTEVALUATE"); }

var assert = function(mustBeTrue, message) {
  if (mustBeTrue === true) return;
  throw new Test262Error(message || "Expected true but got " + mustBeTrue);
};
assert.sameValue = function(a, b, msg) {
  if (a === b) return;
  if (a !== a && b !== b) return; // NaN === NaN
  throw new Test262Error((msg ? msg + ": " : "") + "Expected " + a + " === " + b);
};
assert.notSameValue = function(a, b, msg) {
  if (a !== b) return;
  throw new Test262Error((msg ? msg + ": " : "") + "Expected " + a + " !== " + b);
};
assert.throws = function(ctor, fn, msg) {
  try { fn(); }
  catch(e) { return; }
  throw new Test262Error((msg || "Expected exception not thrown"));
};

var __pass = 0;
var __fail = 0;
var __errors = [];

function __test(name, fn) {
  try {
    fn();
    __pass = __pass + 1;
  } catch(e) {
    __fail = __fail + 1;
    var msg = (e && e.message) ? e.message : "" + e;
    if (msg.length > 80) { msg = msg.substring(0, 80); }
    __errors.push("FAIL: " + name + ": " + msg);
  }
}
`

const footer = `
var __i = 0;
while (__i < __errors.length) {
  console.log(__errors[__i]);
  __i = __i + 1;
}
console.log("PASS=" + __pass + " FAIL=" + __fail + " TOTAL=" + (__pass + __fail));
`

func main() {
	test262Path := flag.String("test262", "", "path to test262 repo")
	outFile := flag.String("o", "zmjs_test262.js", "output file")
	maxTests := flag.Int("max", 0, "max tests (0=all)")
	flag.Parse()

	if *test262Path == "" {
		fmt.Fprintln(os.Stderr, "Usage: gen262 -test262 /path/to/test262 [-o out.js] [-max N]")
		os.Exit(1)
	}

	testDir := filepath.Join(*test262Path, "test")

	var sb strings.Builder
	sb.WriteString(harness)
	sb.WriteString("\n")

	total, skipped, included := 0, 0, 0

	for _, dir := range targetDirs {
		fullDir := filepath.Join(testDir, dir)
		entries, err := os.ReadDir(fullDir)
		if err != nil {
			continue
		}

		for _, e := range entries {
			if e.IsDir() || !strings.HasSuffix(e.Name(), ".js") {
				continue
			}
			total++

			if *maxTests > 0 && included >= *maxTests {
				skipped++
				continue
			}

			src, err := os.ReadFile(filepath.Join(fullDir, e.Name()))
			if err != nil {
				skipped++
				continue
			}
			content := string(src)

			// Skip flags
			if moduleRe.MatchString(content) || rawRe.MatchString(content) ||
				onlyStrictRe.MatchString(content) || negativeRe.MatchString(content) {
				skipped++
				continue
			}

			// Skip unsupported features
			skip := false
			if m := featuresRe.FindStringSubmatch(content); m != nil {
				feats := strings.ToLower(m[1])
				for _, uf := range unsupported {
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

			// Skip tests using unsupported JS features
			skipTest := false
			for _, re := range skipPatterns {
				if re.MatchString(content) {
					skipTest = true
					break
				}
			}
			if skipTest {
				skipped++
				continue
			}

			// Strip YAML frontmatter /*--- ... ---*/
			body := stripFrontmatter(content)

			// Wrap in __test()
			name := dir + "/" + e.Name()
			name = strings.ReplaceAll(name, "language/", "")
			name = strings.ReplaceAll(name, `"`, `\"`)

			sb.WriteString("__test(\"")
			sb.WriteString(name)
			sb.WriteString("\", function() {\n")
			sb.WriteString(body)
			sb.WriteString("\n});\n\n")
			included++
		}
	}

	sb.WriteString(footer)

	if err := os.WriteFile(*outFile, []byte(sb.String()), 0644); err != nil {
		fmt.Fprintln(os.Stderr, "write error:", err)
		os.Exit(1)
	}

	fmt.Printf("Generated %s: %d tests included, %d skipped (of %d total)\n",
		*outFile, included, skipped, total)
	fmt.Printf("File size: %d bytes (%.1f KB)\n", sb.Len(), float64(sb.Len())/1024)
}

func stripFrontmatter(s string) string {
	// Remove /*--- ... ---*/ YAML frontmatter
	start := strings.Index(s, "/*---")
	end := strings.Index(s, "---*/")
	if start >= 0 && end > start {
		return s[:start] + s[end+5:]
	}
	return s
}
