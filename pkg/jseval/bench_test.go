package jseval

import "testing"

func BenchmarkFib20(b *testing.B) {
	src := `function fib(n) { if (n < 2) return n; return fib(n-1) + fib(n-2); } fib(20);`
	for i := 0; i < b.N; i++ {
		Eval(src)
	}
}

func BenchmarkLoop10K(b *testing.B) {
	src := `let sum = 0; for (let i = 0; i < 10000; i = i + 1) { sum = sum + i; }`
	for i := 0; i < b.N; i++ {
		Eval(src)
	}
}
