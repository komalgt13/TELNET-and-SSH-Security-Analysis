#!/bin/bash

# Update package lists
sudo apt update
sudo apt upgrade

#install telnet server
sudo apt install telnetd xinetd -y

#check the status of xinetd service
#press 'q' to exit
sudo systemctl status xinetd.service 

#create the config file
sudo nano /etc/xinetd.d/telnet

#restart the service
sudo systemctl restart xinetd.service

#open port 23
sudo ufw allow 23

#install telnet client
sudo apt install telnet

echo "Telnet server setup completed. You can connect using 'telnet <server-ip>'."

telnet localhost
