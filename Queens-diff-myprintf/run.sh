A[0]="Queens.gcc Queens.rev.gcc"
A[1]="Queens.rev.gcc Queens.gcc"

for k in 0 1 ; do
  echo "==================="
  for j in ${A[k]} ; do
    for i in 1 2 3 ; do
      echo "----- $j , $i -----"

      time ./$j > /dev/null
    done
  done
done
