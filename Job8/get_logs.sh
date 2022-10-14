#!/bin/sh
d=$(date +%d-%m-%Y-%H-%M)
sudo grep -c "session opened" /var/log/auth.log > number_connection-$d
tar -zcvf number_connection-$d.tar.gz number_connection-$d
mv number_connection-$d.tar.gz /home/leo/shell.exe/Job8/Backup
rm number_connection-$d
