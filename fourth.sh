####calculater script 

#!/bin/bash
echo "Enter the input number1"
read a
echo "Enter the input number2"
read b
if [[ $a -eq $b ]]
then
echo "Both are the same number"
elif [[ $a -gt $b ]]
then
echo "Number $a is greater then $b"
echo "Enter the number to be added"
read u 
n3=$(($a+$b+$u))
echo "final output post addition of $u to $A and $b is $n3"
elif [[ $a -lt $b ]]
echo "Number $a lesser then $a"
echo "Enter the number to be subtracted"
read u
n3=$(($a-$b-$u))
echo "Final output subtraction of $u to $a and $b is $n3"
uname
else
echo "not satisfied with any condition"
fi