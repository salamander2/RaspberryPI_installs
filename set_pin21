#!bin/bash
#Shutdown when pin GPIO21 (#40) shorted out
#Add to /boot/config.txt to initiate a shutdown when GPIO pin changes.

echo "dtoverlay=gpio-shutdown,gpio_pin=21,active_low=1,gpio_pull=up" | sudo tee -a /boot/config.txt
echo "boot config updated for pin 21"
