#!/bin/bash

#
# INSTALL SCRIPT for XWindow applications
# This script needs sudo.
#

source ../common-functions

exitIfNotSudo

# cups-pdf
# terminator = A GNOME multiple window terminal
# gparted
# imagemagick
# baobab=Analizar de uso del disco
# hardinfo
# isomaster
#
sudo apt-get install \
    cups-pdf  terminator  gparted imagemagick \
    baobah hardinfo isomaster keepass2  \
    terminator

sudo apt-get install libreoffice libreoffice-dmaths libreoffice-help-es libreoffice-l10n-es libreoffice-l10n-gl 

#FONTS
sudo apt-get install fonts-inconsolataisomaster

#MULTIMEDIA
sudo apt-get install vlc