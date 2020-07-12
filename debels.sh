#!/bin/bash

echo "removing old debs"
rm -rf /home/optergy/deb-optergy/tmp/
rm -rf /home/optergy/deb-optergy/images/

echo "setting executables"
#chmod +x /home/optergy/deb-optergy/profiles/default.postinst
chmod +x /home/optergy/deb-optergy/profiles/DEBELS.postinst
#chmod +x /home/optergy/deb-optergy/default.postinst
echo "converting files"
dos2unix /home/optergy/deb-optergy/profiles/*.*
#d-i preseed/late_command string in-target "sed -i 's/GRUB_CMDLINE_LINUX=\"\"/GRUB_CMDLINE_LINUX=\"net.ifnames=0 biosdevname=0\"/' /etc/default/grub"

#d-i preseed/late_command string in-target "update-grub"

build-simple-cdd --conf /home/optergy/deb-optergy/debels.conf -p DEBELS
