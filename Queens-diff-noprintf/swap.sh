cp Queens.s Queens.rev.s
sed -i -e 's/r13/rTMPTMP/g' ./Queens.rev.s
sed -i -e 's/r14/r13/g' ./Queens.rev.s
sed -i -e 's/rTMPTMP/r14/g' ./Queens.rev.s
