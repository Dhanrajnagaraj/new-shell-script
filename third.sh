###Script for user input is dhanraj or kiran or theju

#!/bin/bash
echo "Enter the input"
read a
if [[ $a == "dhanraj" ]] || [[ $a == "DHANRAJ" ]]
then
echo -e "Entered input is $a\n itsb true"
elif [[ $a == "kiran" ]] || [[ $a == "theju" ]]
then
echo "its partially true"
else
echo -e "its false"
fi