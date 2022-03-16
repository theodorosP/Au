#! /bin/bash
FILE='DATA.dat'
for i in {20..70..5}
   do 
       cd EN-$i
       #rm -fR tmp/
       TOTAL_TIME="$(grep 'PWSCF       ' output.dat)"
       TOTAL_ENERGY="$(grep '!' output.dat)"
       cd .. 
       echo "$i  $TOTAL_ENERGY   $TOTAL_TIME"|cut -c 1,2,40-53,83-87  >> $FILE
       sed -i 's/s//' $FILE 
   done  

