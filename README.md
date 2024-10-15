# TELNET Security Analysis and Alternatives

## Objective
This project aims to capture TELNET traffic to demonstrate its vulnerabilities and compare it with a secure alternative like SSH. 

## Tasks
1. Capture a TELNET session using Wireshark, focusing on the plaintext transmission of commands and passwords.
2. Analyze the captured packets to demonstrate how easy it is to intercept sensitive information.
3. Set up and capture an SSH session, showing the difference in security.
4. Provide a comparative analysis of TELNET and SSH, highlighting the importance of using secure protocols.

## Project Structure

### Scripts

- **TELNET/telnet_setup.sh**: A bash script that sets up the Telnet server and client.
- **SSH/ssh_setup.sh**: A bash script that sets up the SSH server and client.

## Requirements
- Wireshark 
- telnet and SSH setup on system
- can use Docker for macOS

## Steps to Replicate

1. **Install Wireshark**:
   Install Wireshark on your machine if it’s not already installed. Ensure you have permissions to capture packets.

   ```bash
   sudo apt install wireshark

   Make sure wireshark runs in the background under loopback-lo for localhost connection or any other connection if used.

2. **Make the files executable**
   chmod +x TELNET/telnet_setup.sh
   chmod +x SSH/ssh_setup.sh

3. **Run the command**

    ```bash
    ./TELNET/telnet_setup.sh
    ./SSH/ssh_setup.sh

4. **Analyze the capture on wireshark**
   Apply filter "telnet" for capturing telnet traffic and "ssh" for capturing SSH traffic over the network. Click on Analyze option from the menu and see the packets received. 
   