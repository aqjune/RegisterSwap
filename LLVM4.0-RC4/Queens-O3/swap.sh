for i in Queens Queens.elim ; do
        cp $i.s $i.swap.s
        sed -i -e 's/r13/rTMPTMP/g' ./$i.swap.s
        sed -i -e 's/r14/r13/g' ./$i.swap.s
        sed -i -e 's/rTMPTMP/r14/g' ./$i.swap.s
done
