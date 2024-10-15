#!/bin/bash

# # Update package lists
# sudo apt update
# sudo apt upgrade

# # Install OpenSSH server
# sudo apt install openssh-server -y

# # Enable and start the SSH service
# sudo systemctl enable --now ssh
# sudo systemctl start ssh

# #configure firewall
# sudo ufw allow ssh

# # Check the status of the SSH service
# sudo systemctl status ssh

# #create a backup config file
# sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.initial

# #edit the file for enhanced protection
# sudo nano /etc/ssh/sshd_config

# #change port number from 22 to temporary port eg 49532
# #turn PubkeyAuthentication yes
# #turn passwordAuthentication yes

# #generate passkey for auth
# #ssh-keygen -t rsa -b 4096
# #ssh-copy-id username@localhost

# #restart the service
# sudo systemctl status ssh
# sudo systemctl start ssh

# #chmod 700 ~/.ssh
# #chmod 600 ~/.ssh/id_rsa
# #chmod 644 ~/.ssh/id_rsa.pub

# echo "SSH server setup completed. You can connect using 'ssh <username>@localhost'."

echo "User you wanna get in."
read user

echo "IP address you want to log into."
read ip

ssh $user@$ip
