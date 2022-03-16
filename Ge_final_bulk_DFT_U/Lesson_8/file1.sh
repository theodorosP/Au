#! /bin/bash
rm -fR A-* 
WRITEINPUT='write_input.py'
JOB='job'

for i in {560..585..5}
   do 
     X="$(echo "$i" | sed 's/..$/.&/;t;s/^.&/.0&/')"
     mkdir A-$X
     cp $WRITEINPUT ./A-$X
     cp $JOB ./A-$X  
     cd A-$X
     sed -i "s/latt =.*/latt = $X/g" $WRITEINPUT
     python write_input.py
     qsub job 
     cd ..
done

