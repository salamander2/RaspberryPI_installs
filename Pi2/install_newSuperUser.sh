#!/bin/bash

mkdir ~/bin


#Remove default PI user
#(steps -- see below)
#1. create a new user
#2. update the /etc/sudoers* files
#3. login as new user
#4. delete the user pi
#5. check the home directory of pi and clear that out too.
#6. There will still be a group called pi. That's okay.

user="minix"

sudo adduser $user
sudo usermod -aG sudo $user


#Add user to the following groups: adm dialout cdrom sudo audio video plugdev games users netdev gpio i2c spi input
groups="adm dialout cdrom sudo audio video plugdev games users netdev gpio i2c spi input"

# add groups to user
for grp in $groups; do
        sudo usermod -aG $grp $user
        printf "* %s\n" $grp
done
echo "-- Done --"
echo "user $user added to all necessary groups"


#Force sudo to require a password
#There's only one line:
#pi ALL=(ALL) NOPASSWD: ALL
#pi ALL=(ALL) PASSWD: ALL
#
#sudo  chmod u+w /etc/sudoers.d/010_pi-nopasswd
#
#sudo visudo -f /etc/sudoers.d/010_pi-nopasswd
#   #pi ALL=(ALL) PASSWD: ALL
#   newSudoUserName ALL=(ALL) NOPASSWD: /sbin/shutdown, /sbin/poweroff
#sudo  chmod u-w /etc/sudoers.d/010_pi-nopasswd


sudo chmod u+w /etc/sudoers.d/010_pi-nopasswd
echo "$user ALL=(ALL) NOPASSWD: /bin/shutdown, /bin/poweroff" | sudo tee -a /etc/sudoers.d/010_pi-nopasswd
sudo chmod u-w /etc/sudoers.d/010_pi-nopasswd
echo "sudo added for $user"


echo "PLEASE REBOOT NOW and LOG IN AS $user"

echo "Then run the following commands"
echo "> sudo -l"
echo "> groups"
echo "> sudo deluser pi"
exit
