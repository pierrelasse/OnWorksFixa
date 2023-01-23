#!/bin/bash

set -e

echo "* Welcom :D"
echo "* IF THERE IS ERROR ABOUT 'Bla. It is held by process ???' THEN PRESS CTRL + C AND EXECUTE 'kill -9 <the code>' AND RUN THIS SCRIPT AGAIN!"

echo ""

echo "* Executing apt update -y"
apt update -y

echo ""

echo "* Executing dpkg --configure -a"
dpkg --configure -a

echo ""

echo "* Executing apt remove unattended-upgrades -y"
apt remove unattended-upgrades -y

echo ""

echo "* Uninstalling gnome apps"
apt remove gnome-bluetooth -y
apt remove gnome-calculator -y
apt remove gnome-calendar -y
apt remove gnome-characters -y
apt remove gnome-getting-started-docs -y
apt remove gnome-mahjongg -y
apt remove gnome-mines -y
apt remove gnome-screenshot -y
apt remove gnome-sudoku -y
apt remove gnome-todo -y
apt remove gnome-todo-common -y

echo ""

echo "* Removing some ''bloatware'' (some script from github and and another and then i combinded and removed dupelicates)"
apt-get remove aisleriot brltty duplicity empathy empathy-common example-content gnome-accessibility-themes gnome-contacts gnome-mahjongg gnome-mines gnome-orca gnome-screensaver gnome-sudoku gnome-video-effects landscape-common libreoffice-avmedia-backend-gstreamer libreoffice-base-core libreoffice-calc libreoffice-common libreoffice-core libreoffice-draw libreoffice-gnome libreoffice-gtk libreoffice-impress libreoffice-math libreoffice-ogltrans libreoffice-pdfimport libreoffice-style-galaxy libreoffice-style-human libreoffice-writer libsane libsane-common python3-uno rhythmbox rhythmbox-plugins rhythmbox-plugin-zeitgeist sane-utils shotwell shotwell-common telepathy-gabble telepathy-idle telepathy-indicator telepathy-logger telepathy-mission-control-5 totem totem-common totem-plugins printer-driver-brlaser printer-driver-foo2zjs printer-driver-foo2zjs-common printer-driver-m2300w printer-driver-ptouch printer-driver-splix account-plugin-facebook account-plugin-flickr account-plugin-jabber account-plugin-salut account-plugin-twitter account-plugin-windows-live account-plugin-yahoo gnomine mcp-account-manager-uoa telepathy-haze telepathy-salut

echo ""

echo "* Removing some more apps"
apt remove thunderbird -y
apt remove rhythmbox -y
apt-get remove --purge libreoffice* -y
apt-get remove fonts-opensymbol libreoffice libreoffice-\* openoffice.org-dtd-officedocument1.0 python\*-uno uno-libs3-\* ure ure-dbg
apt-get -s remove fonts-opensymbol libreoffice libreoffice-\* openoffice.org-dtd-officedocument1.0 python\*-uno uno-libs3-\* ure ure-dbg

echo ""

echo "* Executing apt upgrade -y"
apt upgrade -y

echo ""

echo "* Executing apt-get -f install"
apt-get -f install

echo ""

apt-get full-upgrade

echo ""


apt-get install --reinstall ubuntu-desktop

echo ""

echo "* Executing apt autoremove -y"
apt autoremove -y

echo ""

echo "* Executing apt-get clean"
apt-get clean

echo ""
echo "* Done :D"


