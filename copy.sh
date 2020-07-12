#!/bin/bash

#sshpass -p elshan scp optergy@192.168.3.88:/home/optergy/deb-optergy/images/debian-9.12-amd64-CD-1.iso /Users/elshankodikara/Dev/optergy/Debian9/Images/ 
sshpass -p elshan rsync -chavzP --stats optergy@192.168.3.88:/home/optergy/deb-optergy/images/debian-9.12-amd64-CD-1.iso ~/Dev/optergy/Debian9/Images/
#ls -lah /Users/elshankodikara/Dev/optergy/Debian9/Images/

