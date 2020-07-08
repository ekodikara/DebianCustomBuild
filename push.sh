#!/bin/bash

sshpass -p elshan rsync -chvzP --stats *.conf *.sh *.txt  optergy@192.168.3.88:/home/optergy/deb-optergy/
sshpass -p elshan scp -r ./profiles/ optergy@192.168.3.88:/home/optergy/deb-optergy/profiles/ 
sshpass -p elshan ssh optergy@192.168.3.88 chmod +x /home/optergy/deb-optergy/*.sh
