./../../../llvm-project/build_x64/bin/clang  -O2 -Rpass=inline -c inline_optimization.cc -o out.o
./../../../llvm-project/build_x64/bin/clang  -O2 -Rpass=.* -c inline_optimization.cc -o out.o
rm out.o