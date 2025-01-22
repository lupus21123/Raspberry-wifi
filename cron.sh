#!/bin/bash
(crontab -l 2>/dev/null; echo "@reboot /usr/bin/sudo /usr/sbin/rfkill unblock wlan && /usr/bin/sudo /usr/sbin/wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf && /usr/bin/sudo /sbin/dhclient wlan0") | crontab -
sudo rm -rf "$(pwd)"
