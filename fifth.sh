###############calculater script ###################

#!/bin/bash
echo "Enter the input number1"
read a
echo "Enter the input number2"
read b
echo -e "Enter '1' for addition\n'2' for subtraction\n '3' for multiplication\n'4' for division"
read usr
if [[ $usr -eq 1 ]]
then
n3=$(($a+$b))
echo "Addition input is $n3"
elif [[ $usr -eq 2 ]]
then
n3=$(($a-$b))
echo "Subtraction output is $n3"
elif [[ $usr -eq 3 ]]
then
n3=$(($a*$b))
echo "multiplication output is $n3"
elif [[ $usr -eq 4 ]]
then
n3=$(($a/$b))
echo "Division output is $n3"
fi