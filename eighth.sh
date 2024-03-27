#####To fnd which column string exists


#!/bin/bash
IFS=$'\n'
lin=0
echo "Enter the content to be checked"
read con
for i in $(cat file.txt)
do
lin=$(($lin+1))
cow=$(echo $i |wc -w)
for ((j=1;j<=$cow;j++))
do
contc=$(echo $i | cut -d " " -f$j)
if [[ $contc == $con ]]
then
echo "Content $con present in  field  $j in line number $lin"
else
echo "Content $con not present in field $j in line number $lin"
fi
done
done