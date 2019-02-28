#SECURE-SSH.SH
#AUTHOR ALEX-CHAMP
#!/bin/sh
#Creates a new ssh user called $1
sudo useradd $1
sudo mkdir /home/$1/.ssh
#Adds a public key to that users authorized keys file
sudo cp ../public-keys/sys265.pub /home/$1/.ssh/authorized_keys
sudo chmod 700 /home/$1/.ssh
sudo chmod 600 /home/$1/.ssh/authorized_keys
#Removes roots ability to ssh in
sudo echo "PermitRootLogin No" | sudo tee -a /etc/ssh/sshd_config
