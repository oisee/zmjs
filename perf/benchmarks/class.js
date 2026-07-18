class Counter {
  constructor() {
    this.n = 0;
  }
  inc() {
    this.n = this.n + 1;
  }
}
const c = new Counter();
for (let i = 0; i < 1000; i++) {
  c.inc();
}
console.log(c.n);
