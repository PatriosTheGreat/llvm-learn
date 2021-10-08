./../../../llvm-project/build_x64/bin/clang -c unusable_copy.cc -o out.o
./../../../llvm-project/build_x64/bin/clang   -Wbind-to-temporary-copy -Werror -c unusable_copy.cc -o out.o
rm out.o