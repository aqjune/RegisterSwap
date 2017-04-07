for j in Queens.gcc Queens.rev.gcc ; do
for i in 1 2 3 ; do
echo "----- $j , $i -----"
time ./$j > /dev/null
done
done
