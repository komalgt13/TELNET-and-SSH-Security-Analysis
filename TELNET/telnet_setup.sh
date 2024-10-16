#!/bin/bash

# Update package lists
sudo apt update
sudo apt upgrade

echo "Choose an option:"
echo "1. Setup Telnet Server"
echo "2. Connect using Telnet"
echo "3. Edit config file"
read -p "Enter your choice : " choice

if [ "$choice" -eq 1 ]; then


    #install telnet server
    sudo apt install telnetd xinetd -y

    #check the status of xinetd service
    #press 'q' to exit
    sudo systemctl status xinetd.service 

    #create the config file
    cat > filename.txt << EOF
        service telnet

        {

        disable = no

        flags = REUSE

        socket_type = stream

        wait = no

        user = root

        server = /usr/sbin/in.telnetd

        log_on_failure += USERID

        }
EOF

    sudo nano /etc/xinetd.d/telnet

    #restart the service
    sudo systemctl restart xinetd.service

    #open port 23
    sudo ufw allow 23

    echo "Telnet server setup completed."
elif [ "$choice" -eq 2 ]; then

    #install telnet client
    sudo apt install telnet


    echo "IP address you want to log into."
    read ip

    telnet $ip
elif [ "$choice" -eq 3 ]; then
    sudo nano /etc/xinetd.d/telnet 

else
    echo "Invalid choice. Please run the script again and choose 1 or 2."
    exit 1

fi
