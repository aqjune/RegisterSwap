if [ "$#" -le 0 ]; then
  echo "run.sh <clang/gcc> [.elim]"
  exit 1
fi

cc=$1
elim=$2
A[0]="Queens$elim Queens$elim.swap"

for k in 0 1 2 3 ; do
  echo "==================="
  for j in ${A[k]} ; do
    for i in 1 2 3 ; do
      echo "----- ${j}.$cc , $i -----"

      time ./${j}.$cc > /dev/null
    done
  done
done
