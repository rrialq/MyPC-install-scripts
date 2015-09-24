#!/bin/sh
#
# INSTALL SCRIPT for this resources
#

source ./common-functions

exitIfNotSudo

./consoleApplications/install.bash
./home/install.bash
./fileManagerActions/install.bash
./xwindowApplications/install.bash