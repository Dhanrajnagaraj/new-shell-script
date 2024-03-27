####To check particular content or not present in list of files

#!/bin/bash
for fil in y.txt io.txt tt.txt
do
for con in "praveen" "sanath" "dhanraj" "abhi" "kiran"
do
col=$(grep $con $fil|wc -l)
if [[ $col -gt 0 ]]
then
lin=$(grep -in $con $fil|cut -d ":" -f1)

echo "$con present in $fil in line number  $lin"
else
echo "$con not present in $fil"
fi
done
echo "===========End of file $fil========================"
done