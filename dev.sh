#!/bin/bash

echo "removing old debs"
rm -rf tmp/

echo "setting executables"
#chmod +x ./profiles/dev.postinst
chmod +x ./profiles/dev.postinst
#chmod +x ./default.postinst
echo "converting files"
#dos2unix ./profiles/*.*
#d-i preseed/late_command string in-target "sed -i 's/GRUB_CMDLINE_LINUX=\"\"/GRUB_CMDLINE_LINUX=\"net.ifnames=0 biosdevname=0\"/' /etc/default/grub"

#d-i preseed/late_command string in-target "update-grub"
cat ./profiles/dev.packages
#build-simple-cdd --conf default.conf --local-packages /home/optergy/deb-optergy/debs/ -p stage
build-simple-cdd --conf dev.conf -p dev
