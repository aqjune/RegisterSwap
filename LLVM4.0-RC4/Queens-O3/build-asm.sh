for i in Queens Queens.swap Queens.elim Queens.elim.swap ; do
clang -o $i.clang $i.s
gcc -o $i.gcc $i.s
done
