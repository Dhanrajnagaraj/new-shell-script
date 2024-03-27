####a. check wthetr numiber is even or odd
####b. if number is odd check wther number is divisable by even input number or not

#!/bin/bash
echo "enter the number"
read p
for ((i=0;i<=20;i++))
do
if [[ $i%2 -eq 0 ]]
then
echo "$i is even"
uptime
else
echo "$i is odd"
if [[ $i%$p -eq 0 ]]
then
echo "$i is odd and its completely divisable by $p"
who -r
else
echo "$i is odd and its not completely divisable by $p"
fi
fi
echo "====================================="
done