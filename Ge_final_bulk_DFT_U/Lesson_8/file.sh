#! /bin/bash
FILE='DATA.dat'
for i in {560..585..5}
   do 
       X="$(echo "$i" | sed 's/..$/.&/;t;s/^.&/.0&/')"
       cd A-$i
       rm -fR tmp/
       TOTAL_TIME="$(grep 'PWSCF       ' output.dat)"
       cd .. 
       echo "$i  $TOTAL_ENERGY " |cut -c 1,2,40-53,81-87,136-142  >> $FILE
       sed -i 's/m//' $FILE 
       sed -i 's/s//' $FILE
   done  

