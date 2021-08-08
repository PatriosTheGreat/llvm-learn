#include <stdio.h>

#pragma macro_arg_guard val
#define PRINT(val) \
  printf("%d\n", val * 94 + (val) * 87);

  
#pragma macro_arg_guard val val2 val3
#define PRINT2(val, val2) \
  printf("%d %d\n", (val), val2);
int main() {
  PRINT(1 + 3);

  PRINT2(1 + 3, 1);
  return 0;
}