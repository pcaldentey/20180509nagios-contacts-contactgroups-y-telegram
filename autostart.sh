#!/bin/sh -e
echo "Autostart.sh"
cp /vagrant/*.cfg /usr/local/nagios/etc/objects/
service nagios restart

return 0

