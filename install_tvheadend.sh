#!/bin/bash

# install_tvheadend.sh
# Installs TVHeadend on the Raspberry Pi 3 running Raspbian Stretch
# Last updated 02/06/2019

# Install required packages
sudo apt install coreutils wget apt-transport-https lsb-release ca-certificates

#Add the required repository PGP key
sudo wget -qO- https://doozer.io/keys/tvheadend/tvheadend/pgp | sudo apt-key add -

# Create/add the sources.list
echo "deb http://apt.tvheadend.org/stable raspbian-stretch main" | sudo tee -a /etc/apt/sources.list.d/tvheadend.list

# Update sources
sudo apt update

# Install TVHeadend
sudo apt install tvheadend

# TVHeadend's Web server should be running on port 9981 now
echo "TVHeadend's Web server should be running on 9981 now."
echo "TVHeadend installation complete."

# End of file
