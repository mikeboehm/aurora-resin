#!/bin/bash
#Set the root password as root if not set as an ENV variable
export PASSWD=${PASSWD:=root}
#Set the root password
echo "root:$PASSWD" | chpasswd

echo "################################################"
echo "##################            ##################"
echo "##################   Aurora   ##################"
echo "##################            ##################"
echo "################################################"

#Spawn dropbear
dropbear -E -F &

# source /app/loader.sh


#start your application from here...
python app/main.py
