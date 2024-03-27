####To check process running or not . if its running take action as per user input

#!/bin/bash
for proces in "firefox" "dict"
do
col=$(ps -eaf |grep $proces |wc -l)
if [[ $col -gt 1 ]]
then
echo "Process $proces is running and below are process details"
ps -eaf | grep $proces
echo -e "Enter yes to stop process"
read opt
if [[ $opt == "yes" ]]
then
echo "User confirmed to kill process $proces"
pkill $proces
col_pos_kill=$(ps -eaf |grep $proces|wc -l)
if [[ $col_pos_kill -eq 1 ]]
then
echo "Process $proces got killed successfully post user confirmation"
else
echo "Process $proces not killed successfully Now process need to kill forcefully based on user confirmation"
read opt1
if [[ $opt1 == "yes" ]]
then
pkill -9 $proces
colw=$(ps -eaf |grep $proces|wc -l)
if [[ $colw -eq 1 ]]
then
echo "Perocess $proces got killed forcefully"
else
echo "Process $proces not killed "
fi
fi
fi
else
echo "User not confirmed to kill the process $proces"
fi

else
echo "Process $proces is not running"
fi
echo "==============End of details of process $proces===================="
done