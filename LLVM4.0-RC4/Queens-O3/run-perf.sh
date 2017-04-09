if [ "$#" -le 0 ]; then
  echo "run-perf.sh <clang/gcc> [.elim]"
  exit 1
fi

cc=$1
elim=$2
A[0]="Queens$elim Queens$elim.swap"

for k in 0 1; do
  echo "==================="
  for j in ${A[k]} ; do
    echo "----- ${j}.$cc , perf stat -r 200 -----"

    perf stat -r 200 ./${j}.$cc
  done
done
