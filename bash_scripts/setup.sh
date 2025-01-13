#!/bin/bash

# This script is used to set up the different worlds insctructions

# Passwords

echo "world1:world1" | chpasswd
echo "world2:6xMbjDpGmPkkP9M@" | chpasswd
echo "world3:R2ej%RH8B6GsW3AB" | chpasswd
echo "world4:2pF7SMt5SZPHwUHiPDaVQuz7gBR2pfgkz3CL" | chpasswd
echo "world5:A9L$^4Ag2hEawgFNtYmlN%!BCVnn*B&9EqKUo&7bXmxdbnhEPhfuXBqb2%lu69!6" | chpasswd
echo "world5p2:{SOFT-HYPHEN}" | chpasswd
echo "root:!iAu!y6ST&*oS2L*" | chpasswd

# Worlds README

bash readme.sh
bash world1.sh
bash world2.sh
bash world3.sh
bash world4.sh
bash world5.sh
