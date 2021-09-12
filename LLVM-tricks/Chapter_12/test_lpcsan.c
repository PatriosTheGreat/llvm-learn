void foo(int S, int E, int ST, int *a) {
  for (int i = S; i < E; i += ST) {
    a[i] = a[i + 1];
  }
}
int main(int argc, char **argv) {
  int start = atoi(argv[1]),
      end = atoi(argv[2]),
      step = atoi(argv[3]);
  int a[100];
  foo(start, end, step, a);
  return 0;
}