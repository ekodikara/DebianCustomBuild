#!/bin/bash

sshpass -p elshan rsync -rv --stats *.conf *.sh  optergy@192.168.3.88:/home/optergy/deb-optergy/
sshpass -p elshan rsync -rv --stats ./profiles/  optergy@192.168.3.88:/home/optergy/deb-optergy/profiles/
#sshpass -p elshan scp -r ./profiles/ optergy@192.168.3.88:/home/optergy/deb-optergy/ 
sshpass -p elshan ssh optergy@192.168.3.88 chmod +x /home/optergy/deb-optergy/*.sh
