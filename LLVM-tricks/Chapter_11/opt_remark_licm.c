#include <stdlib.h>

int foo(int *a, int N) {
  int x = a[5];
  for (int i = 0; i < N; i += 3) {
    a[i] += 2;
    x = a[5];
  }
  return x;
}

int main() {
    int *a = (int*) malloc(sizeof(int) * 10);
    for (int i = 0; i < 10; i++) a[i] = 0;
    foo(a, 10);
}