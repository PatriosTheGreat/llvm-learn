clang -fsyntax-only -fplugin=./FindNamedClassPlugin.so -Xclang -plugin -Xclang find-named-class \
    test.cpp