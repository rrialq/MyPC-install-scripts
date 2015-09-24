#!/bin/bash

#
# INSTALL SCRIPT for console applications
# This script needs sudo.
#

source ../common-functions

exitIfNotSudo

# Common utils
#     p7zip, unrar = Compression utils
#     dfc = A colorized version of df.
#     htop = An advanced version of top.
#     figlet = An elegant banner text util.
#
sudo apt-get install \
	unace p7zip-full p7zip-rar sharutils mpack arj dtrx lunzip lzip unrar \
	curl \
	dfc htop figlet \
	uuid-runtime \

# xmllint
sudo apt-get install libxml2-utils
