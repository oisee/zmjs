const arr = [];
for (let i = 0; i < 2000; i++) {
  arr.push(i);
}
let total = 0;
for (let i = 0; i < arr.length; i++) {
  total = total + arr[i];
}
console.log(total);
