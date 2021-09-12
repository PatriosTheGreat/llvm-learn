#include <stdio.h>  
#include <cstdlib>
__attribute__((noinline))
void foo(int x) {
  if (rand() % 10 > 5)
    printf("Hello %d\n", x * 3);
}
int main(int argc, char **argv) {
  for (int i = 0; i < argc + 10; ++i) {
    foo(i);
  }
  return 0;
}