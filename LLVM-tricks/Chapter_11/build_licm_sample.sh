../../../llvm-project/build_x64/bin/clang++ -emit-llvm -S licm_sample.c
../../../llvm-project/build_x64/bin/opt -licm -pass-remarks-output=licm_sample.yaml licm_sample.ll -o /dev/null