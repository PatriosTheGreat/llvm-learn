# export CC_PRINT_PROC_STAT=1
# export CC_PRINT_PROC_STAT_FILE=~/project-build-proc-stat.csv
#
./../../../llvm-project/build_x64/bin/clang++ -fproc-stat-report=pro_stat_report sample.cc
rm a.out