#!/bin/bash

set -e

echo "* Welcom :D"

apt update -y
apt upgrade -y
apt autoremove -y
apt remove unattended-upgrades
dpkg --configure -a

echo "* Done :D"
