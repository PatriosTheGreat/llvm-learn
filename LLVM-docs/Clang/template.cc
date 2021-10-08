template<typename T> struct set{};
template<typename T> struct trait { typedef const T& type; };
struct Value {
  template<typename T> void set(typename trait<T>::type value) {}
};
void foo() {
  Value v;
  v.set<double>(3.2);
}

int main() {
    foo();
}