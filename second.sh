### script to check the user input is "praveen"

#!/bin/bash
echo "Enter the input"
read a
if [[ $a == "dhnraj" ]]
then
echo -e "Entred input is $a\n its true"
else
echo -e "its false"
fi