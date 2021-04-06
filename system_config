#/bin/bash

echo "Setting Swappiness to 1 (from default of 60)"

sysctl vm.swappiness
echo "vm.swappiness=1" | sudo tee -a /etc/sysctl.conf

sudo sysctl --system
cat /proc/sys/vm/swappiness

