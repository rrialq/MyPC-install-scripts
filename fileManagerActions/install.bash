#!/bin/bash
#
# INSTALL SCRIPT for file-manager actions
#
# It installs the trash-cli, to allow a new custom action in pcmanfm 
#
# Exit values:
#
#     0 == Installation OK.
#     1 == No Lubuntu detected
#     2 == No argument passed
#     3 == Argument is no folder or No write permission
#

source ../common-functions

commonScriptName="fileManagerActions/install.bash"

exitIfNotLubuntu
exitIfNotSudo
exitIfNotArguments $@
# exitIfNotDirectoryOrWritable "$1"

# Add action to empty trash
sudo apt-get install trash-cli

DESTINATION_PATH="${1}/.local/share/file-manager/actions"
sudo -u "${SUDO_USER}" mkdir -p "${DESTINATION_PATH}"

# We copy the custom actions
sudo -u "${SUDO_USER}" cp -Rp actions/* "${DESTINATION_PATH}"
