#!/bin/bash

set -e

echo "* Welcom :D"
echo "* IF THERE IS ERROR ABOUT 'Bla. It is held by process ???' THEN PRESS CTRL + C AND EXECUTE 'kill -9 <the code>' AND RUN THIS SCRIPT AGAIN!"

apt remove unattended-upgrades
dpkg --configure -a
apt update -y
apt upgrade -y
apt autoremove -y

echo "* Done :D"
