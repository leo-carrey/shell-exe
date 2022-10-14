#!/bin/bash

sed 1d Shell_Userlist.csv | while IFS=, read -r ID FirstName Name Pass Group
do
	username="$FirstName""$Name"
	cleanusername="$(echo "${username}" | tr -d '[:space:]')"
	sudo useradd -p $(openssl passwd -1 $Pass) $cleanusername
	if [[ $Group == A* ]]; then
		sudo usermod -aG sudo $cleanusername
	fi
done
