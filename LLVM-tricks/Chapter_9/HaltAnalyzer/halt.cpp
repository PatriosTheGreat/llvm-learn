int foo(int x, int y) {
  if (x < 43) {
    my_halt();
    if (y > 45)
      return x + 1;
    else {
      bar();
      return x;
    }
  } else {
    return y;
  }
}