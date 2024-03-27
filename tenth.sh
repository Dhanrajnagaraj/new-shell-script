####To Check which line contains maximumc character

#!/bin/bash
j=0
cof=0
for i in $(cat file.txt)
do
j=$(($j+1))
coc=$(echo $i|wc -c)
if [[ $coc -gt $cof ]]
then
lin=$j
cof=$coc
con=$i
fi
echo "=================="
done