define i32 @foo(i32* %0, i32* %1) {
  %3 = load i32, i32* %1
  %4 = add i32 %3, 1
  store i32 %4, i32* %0
  %5 = load i32, i32* %1
  ret i32 %5
}