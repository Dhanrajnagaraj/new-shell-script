####How to check service is running or not

#!/bin/bash
for i in "crond" "vsftpd"
do
col=$(service $i status |grep "running"|wc -l)
if [[ $col -gt 0 ]]
then
echo "Service $i is running"
else
echo "Service $i is not running"
echo "Enter 'yes'  to start service $i"
read se
if [[ $se =~ [yY][eE][sS] ]]
then
echo "User confirmed to start service $i"
service $i start
cos=$(service $i status |grep "running"|wc -l)
if [[ $cos -gt 0 ]]
then
echo "Service $i started successfully"
else
echo "Service $i not started due to permission issue or any others"
fi
else
echo "User not confirmed to start service $i"
fi
fi
done