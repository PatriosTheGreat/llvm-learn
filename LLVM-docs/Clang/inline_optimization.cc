int foo(int i, int j) {
    return i + j;
}

int bar(int j) { return foo(j, j - 2); }

int main() {
    bar(3);
}