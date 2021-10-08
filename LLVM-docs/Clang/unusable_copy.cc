struct NonCopyable {
  NonCopyable();
private:
  NonCopyable(const NonCopyable&);
};
void foo(const NonCopyable&);
void bar() {
  foo(NonCopyable());  // Disallowed in C++98; allowed in C++11.
}

struct NonCopyable2 {
  NonCopyable2();
  NonCopyable2(NonCopyable2&);
};
void foo2(const NonCopyable2&);
void bar2() {
  foo2(NonCopyable2());  // Disallowed in C++98; allowed in C++11.
}