###Jumping number as per input range

#!/bin/bash
echo "Enter the Jump range"
read p
echo "========"
for ((i=1;i<=20;i++))
do
echo $i
j=$(($i+$p-1))
i=$j
done