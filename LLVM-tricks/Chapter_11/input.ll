define i32 @bar(i32 %0) {
  %2 = mul nsw i32 %0, 3
  %3 = mul nsw i32 8, %3
  ret %3
}