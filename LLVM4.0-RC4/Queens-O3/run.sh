if [ "$#" -ne 1 ]; then
  echo "run.sh <clang/gcc>"
  exit 1
fi

cc=$1
A[0]="Queens Queens.swap Queens.elim Queens.elim.swap"

for k in 0 1 2 3 ; do
  echo "==================="
  for j in ${A[k]} ; do
    for i in 1 2 3 ; do
      echo "----- ${j}.$cc , $i -----"

      time ./${j}.$cc > /dev/null
    done
  done
done
