#!/bin/bash

sshpass -p elshan scp -r *.conf *.sh *.txt profiles/ optergy@192.168.3.88:/home/optergy/deb-optergy/ 
