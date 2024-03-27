##To check whether input is number or not 

###if input is number then it should number is even or not

=~ =====> matches condition

#!/bin/bash
echo "Enter the input"
read n
if [[ $n =~ ^[0-9]+$ ]]
then
if [[ $n%2 -eq 0 ]]
then
echo "Number $n is even"
else
echo "Number $n is odd"
fi
else
echo "Invalid input"
fi