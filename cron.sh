#!/bin/bash
(crontab -l 2>/dev/null; echo "@reboot sudo rfkill unblock wlan && sudo wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf && sudo dhclient wlan0") | crontab -
sudo rm -rf "$(pwd)"
