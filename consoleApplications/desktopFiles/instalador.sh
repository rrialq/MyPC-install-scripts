#!/bin/sh

#For some tools you have here some commons desktop files
#for using as template.
#Edit them and execute this script to install them.

if [ $(/usr/bin/id -u) -ne 0 ]; then
    echo "I need SUDO"
    exit
fi

ICONS_PATH=/usr/share/pixmaps
APPS_PATH=/usr/share/applications

for item in *desktop; do
	cp $item $APPS_PATH
	echo $item
done

for item in *\.xpm *\.png; do
	cp $item $ICONS_PATH
	echo $item
done

lxpanelctl restart
