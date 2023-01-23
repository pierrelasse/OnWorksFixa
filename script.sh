#!/bin/bash

set -e

echo "* Welcom :D"
echo "* IF THERE IS ERROR ABOUT 'Bla. It is held by process ???' THEN PRESS CTRL + C AND EXECUTE 'kill -9 <the code>' AND RUN THIS SCRIPT AGAIN!"
echo ""
echo "* Executing apt update -y"; apt update -y
echo ""
echo "* Executing dpkg --configure -a"; dpkg --configure -a
echo ""
echo "* Executing apt remove unattended-upgrades -y"; apt remove unattended-upgrades -y
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
echo "* Executing apt upgrade -y"; apt upgrade -y
echo ""
echo "* Executing apt autoremove -y"; apt autoremove -y

echo "* Done :D"
