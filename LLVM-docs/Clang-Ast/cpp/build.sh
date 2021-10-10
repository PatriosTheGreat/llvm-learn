clang++ -x c++-header -o foo.ast foo.cpp
clang++ -x c++-header -o main.ast main.cpp
clang++ -cc1 -x c++ -ast-merge foo.ast -ast-merge main.ast /dev/null -ast-dump
clang++ -cc1 -x c++ -ast-merge foo.ast -ast-merge main.ast /dev/null -emit-obj -o main.o
clang++ -o a.out main.o
./a.out
echo $?


rm *.out
rm *.o
rm *.ast