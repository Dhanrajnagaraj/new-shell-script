###script for check the polindram or not

#!/bin/bash
echo "Enter the user input"
read a
echo $a
recout=$(echo $a|rev)
if [[ $a == $recout ]]
then
echo "string $a is polindrome"
else
echo "string $a not a polindrom"
fi