// RUN: %jsm %s -o - | FileCheck
// CHECK: const foo = (a,b) =>
// CHECK-SAME: {let c = a + b; console.log(`This is ${c}`);}
const foo = (a, b) => {
    let c = a + b;
    console.log(`This is ${c}`);
}