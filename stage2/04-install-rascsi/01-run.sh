#!/bin/bash -e

on_chroot << EOF
su pi
cd /home/pi/
git clone https://github.com/akuker/RASCSI.git
cd RASCSI
git checkout develop
./easyinstall.sh -r=1
EOF
