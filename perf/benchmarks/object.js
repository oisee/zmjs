const obj = { count: 0, name: "bench" };
for (let i = 0; i < 2000; i++) {
  obj.count = obj.count + 1;
}
console.log(obj.count);
