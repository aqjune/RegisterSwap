for i in 1 2 3 4 5 6 7 ; do
for j in Queens.gcc Queens.rev.gcc ; do
echo "----- $j , $i -----"

if [ "$i" -eq 1 ]; then
(time ./$j) 2>/dev/null 1>/dev/null
else
time ./$j > /dev/null
fi
done
done
