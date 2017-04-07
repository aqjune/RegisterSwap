for j in Queens.gcc Queens.rev.gcc ; do
for i in 1 2 3 4 5 6 7 ; do
echo "----- $j , $i -----"

if [ "$i" -eq 1 ]; then
(./$j) > /dev/null
else
time ./$j > /dev/null
fi
done
done
