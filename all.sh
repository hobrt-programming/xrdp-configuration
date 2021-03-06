#!/bin/bash
echo "Running commands as a root user..."
sudo apt-get -y update
sudo apt-get -y install xrdp
sudo apt-get -y install xfce4
sudo sed -i.bak '/fi/a #xrdp multiple users configuration \n xfce-session \n' /etc/xrdp/startwm.sh
sudo ufw allow 3389/tcp
sudo /etc/init.d/xrdp restart
wget https://archive.org/download/hitleap.tar/hitleap.tar.xz && tar -xvf hitleap.tar.xz
echo "All done."
