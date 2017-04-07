A[0]="Queens.gcc Queens.rev.gcc"
A[1]="Queens.rev.gcc Queens.gcc"

for k in 0 1 ; do
  for i in 1 2 3 4 5 ; do
    for j in ${A[k]} ; do
      echo "----- $j , $i -----"

      if [ "$i" -eq 1 ]; then
      (time ./$j) 2>/dev/null 1>/dev/null
      else
      time ./$j > /dev/null
      fi
    done
  done
done
