../../../llvm-project/build_x64/bin/clang -O1 -fprofile-generate=pgo_prof.dir pgo.cpp -o pgo
../../../llvm-project/build_x64/bin/llvm-profdata merge pgo_prof.dir/ -o pgo_prof.profdata 
../../../llvm-project/build_x64/bin/clang -O1 -fprofile-use=pgo_prof.profdata pgo.cpp \
        -emit-llvm -S -o pgo.after.ll
../../../llvm-project/build_x64/bin/llvm-profdata show --all-functions --counts  pgo_prof.profdata