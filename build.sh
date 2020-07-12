#/bin/bash

if [ "$1" == "" ]; then
	echo "Build script should pass!"
	ls -l *.sh
	exit 1
fi

sshpass -p elshan ssh optergy@192.168.3.88 bash '/home/optergy/deb-optergy/'$1
sleep 1
exit 0