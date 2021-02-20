#!/bin/bash
echo "Running commands as a root user..."
sudo -- -sh -c <<EOF
apt-get -y update
apt-get -y install xrdp
apt-get -y install xfce4
sed -i.bak '/fi/a #xrdp multiple users configuration \n xfce-session \n' /etc/xrdp/startwm.sh
ufw allow 3389/tcp
/etc/init.d/xrdp restart
echo "All done."
EOF
