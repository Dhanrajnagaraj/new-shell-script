###a. Script will take 2 inputs
###b. count of characters of input1  greater than count of chatcrer of input2 perform one operation and viceversa


#!/bin/bash
echo "Enter the input1"
read a
echo "Enter the input2"
read b
coa=$(echo $a |wc -c)
cob=$(echo $b |wc -c)
if [[ $coa -gt $cob ]]
then
ou="$a$b"
sum_of_chart=$(($coa+$cob))
echo -e "Count of characters of input $a is greater than count of charater of input $b  and combined output  of $a and $b is $ou\n Count of characters of $a and$b is $sum_of_chart"

elif [[ $cob -gt $coa ]]
then
echo "Enter another user input"
read c
coc=$(echo $c|wc -c)
ou="$a$b$c"
sum_di_cha=$(($coa-$cob+$coc))
echo -e "Count of characters of input $b is greater than count of charater of input $a  and combined output  of $a and $b  and $c is $ou\n Count of character in $a is $coa\nCount of character in $b is $cob\nCount of charcters  $a and $b and subtract $c is $sum_di_cha"
elif [[ $coa -eq $cob ]]
then
echo -e "Count of characters of $a and $b is same"
if [[ $a == $b ]]
then
echo "Both input $a and $b is same"
who -r
useradd $a
grep $a /etc/passwd  >/tmp/$a
groupadd $a
grep $b /etc/group >> /tmp/$a

echo "Verification of user and group details"
cat /tmp/$a
elif [[ $a != $b ]]
then
echo "Enter the input to be checked in $a"
read con
col=$(echo $a |grep $con|wc -l)
if [[ $col -gt 0 ]]
then
echo "$con present in input $a"
else
echo "$con not present in input $a"
fi
fi

fi