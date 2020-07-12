#!/bin/bash

echo "removing old debs"
rm -rf /home/optergy/deb-optergy/tmp/

echo "setting executables"
chmod +x /home/optergy/deb-optergy/*.sh
#chmod +x /home/optergy/deb-optergy/profiles/stage.postinst
#chmod +x /home/optergy/deb-optergy/default.postinst
echo "converting files"
dos2unix /home/optergy/deb-optergy/profiles/*.*
#d-i preseed/late_command string in-target "sed -i 's/GRUB_CMDLINE_LINUX=\"\"/GRUB_CMDLINE_LINUX=\"net.ifnames=0 biosdevname=0\"/' /etc/default/grub"

#d-i preseed/late_command string in-target "update-grub"
cat /home/optergy/deb-optergy/profiles/stage.packages
#build-simple-cdd --conf default.conf --local-packages /home/optergy/deb-optergy/debs/ -p stage
build-simple-cdd --conf /home/optergy/deb-optergy/stage.conf -p stage
