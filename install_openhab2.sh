#!/bin/sh

# install_openhab2.sh
# Last edited: 11/20/2019

# Get key for OpenHAB repo
wget -qO - 'https://bintray.com/user/downloadSubjectPublicKey?username=openhab' | sudo apt-key add -

# Install HTTPS transport for apt
sudo apt-get install apt-transport-https

# Add OpenHAB repo to system
echo 'deb https://dl.bintray.com/openhab/apt-repo2 stable main' | sudo tee /etc/apt/sources.list.d/openhab2.list

# Update repos and install OpenHAB, addons packages
sudo apt-get update && sudo apt-get install openhab2 openhab2-addons

# Install Zulu 8
#

# End of file