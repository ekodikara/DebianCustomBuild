#!/bin/bash

1>&2 echo "executing default.sh"
chmod +x ./profiles/DEBELS.postinst

#d-i preseed/late_command string in-target "sed -i 's/GRUB_CMDLINE_LINUX=\"\"/GRUB_CMDLINE_LINUX=\"net.ifnames=0 biosdevname=0\"/' /etc/default/grub"

#d-i preseed/late_command string in-target "update-grub"

build-simple-cdd --conf default.conf
