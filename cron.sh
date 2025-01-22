#!/bin/bash

chmod +x wifi.sh
(crontab -l 2>/dev/null; echo "@reboot /bin/bash /path/to/wifi.sh") | crontab -
