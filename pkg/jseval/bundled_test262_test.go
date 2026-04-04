package jseval

import (
	"fmt"
	"os"
	"regexp"
	"strings"
	"testing"
	"time"
)

func TestBundledTest262(t *testing.T) {
	src, err := os.ReadFile("../../test262/zmjs_test262.js")
	if err != nil {
		t.Skipf("test262 bundle not found: %v", err)
	}

	// Extract harness (everything before first __test)
	full := string(src)
	firstTest := strings.Index(full, "__test(")
	if firstTest < 0 {
		t.Fatal("no __test( found in bundle")
	}
	harness := full[:firstTest]

	// Extract individual tests
	re := regexp.MustCompile(`__test\("([^"]+)"`)
	matches := re.FindAllStringSubmatchIndex(full, -1)

	type testCase struct {
		name string
		code string
	}
	var tests []testCase
	for i, m := range matches {
		name := full[m[2]:m[3]]
		start := m[0]
		end := len(full)
		if i+1 < len(matches) {
			end = matches[i+1][0]
		}
		tests = append(tests, testCase{name: name, code: full[start:end]})
	}

	pass, fail := 0, 0
	var failures []string

	for _, tc := range tests {
		script := harness + tc.code + `
for (var ei = 0; ei < __errors.length; ei++) {
  console.log(__errors[ei]);
}
console.log("PASS=" + __pass + " FAIL=" + __fail);
`
		done := make(chan string, 1)
		go func() {
			defer func() {
				if r := recover(); r != nil {
					done <- fmt.Sprintf("PANIC: %v", r)
				}
			}()
			out, err := Eval(script)
			if err != nil {
				done <- fmt.Sprintf("ERROR: %v", err)
				return
			}
			done <- out
		}()

		select {
		case out := <-done:
			if strings.Contains(out, "FAIL=0") {
				pass++
			} else {
				fail++
				lines := strings.Split(strings.TrimSpace(out), "\n")
				last := lines[len(lines)-1]
				failures = append(failures, tc.name+": "+last)
			}
		case <-time.After(5 * time.Second):
			fail++
			failures = append(failures, tc.name+": TIMEOUT")
		}
	}

	t.Logf("PASS=%d FAIL=%d TOTAL=%d", pass, fail, pass+fail)
	for _, f := range failures {
		t.Logf("  %s", f)
	}

	if fail > 0 {
		t.Errorf("%d tests failed out of %d", fail, pass+fail)
	}
}
