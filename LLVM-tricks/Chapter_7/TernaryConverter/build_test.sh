clang -fsyntax-only -fplugin=./TernaryConverterPlugin.so -Xclang -plugin -Xclang ternary-converter \
   -Xclang -plugin-arg-ternary-converter \
   -Xclang -no-detect-return \
    test.c