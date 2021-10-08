#include <iostream>

int foo(int i) {
    return i == 0 ? 1 : foo(i--);
}

int main() {
    std::cout << "Hi there:" << foo(5) << std::endl;
}