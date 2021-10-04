#!/bin/bash -e

on_chroot << EOF
su pi
cd /home/pi/
git clone https://github.com/akuker/RASCSI.git
cd RASCSI
git checkout develop
git config --global user.email "user@rascsi.com"
git config --global user.name "RaSCSI User"

./easyinstall.sh -r=1
echo "easyinstal exited: $?"
EOF
