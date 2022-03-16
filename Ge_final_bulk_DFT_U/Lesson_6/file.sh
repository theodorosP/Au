#! /bin/bash
FILE='DATA.dat'
for i in {4..18..1}
   do 
       cd K-$i
       rm -fR tmp/
       TOTAL_TIME="$(grep 'PWSCF       ' output.dat)"
       TOTAL_ENERGY="$(grep '!' output.dat)"
       K_POINT_SAMPLE="$(grep 'number of k points' output.dat)" 
       cd .. 
       echo "$i  $TOTAL_ENERGY  $TOTAL_TIME  $K_POINT_SAMPLE" |cut -c 1,2,40-53,81-87,136-142  >> $FILE
       sed -i 's/m//' $FILE 
       sed -i 's/s//' $FILE
   done  

