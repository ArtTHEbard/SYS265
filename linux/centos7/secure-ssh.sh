#secure-ssh.sh
#author sjohnson
#creates a new ssh user using $1 parameter
#adds a public from the local repo or curled from the remote repo
#removes roots ability to ssh inecho "ALL YOUR CODE GOES HERE"
#!/bin/bash
sudo useradd -m -d /home/$1 -s /bin/bash $1
sudo mkdir /home/$1/.ssh
sudo cp /home/sjohnson/SYS265/linux/public-keys/id_rsa.pub /home/$1/.ssh/authorized_keys
sudo chmod 700 /home/$1/.ssh
sudo chmod 600 /home/$1/.ssh/authorized_keys
sudo chown -r $1:$1 /home/sys265/.ssh
