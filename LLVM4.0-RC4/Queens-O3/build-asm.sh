for i in Queens Queens.swap Queens.elim Queens.elim.swap ; do
clang -c -o $i.o $i.s
clang -o $i.clang $i.o
gcc -o $i.gcc $i.o
done
