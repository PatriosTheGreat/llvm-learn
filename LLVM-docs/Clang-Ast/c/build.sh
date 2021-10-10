clang -cc1 -emit-pch -o bar.ast bar.c
clang -cc1 -emit-pch -o main.ast main.c

clang -cc1 -ast-merge bar.ast -ast-merge main.ast /dev/null -ast-dump
clang -cc1 -ast-merge bar.ast -ast-merge main.ast /dev/null -emit-obj -o main.o
clang -o a.out main.o
./a.out

echo $?

rm *.out
rm *.o
rm *.ast