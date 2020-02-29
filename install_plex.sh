# install_plex.sh
# Last updated: 10/02/2019
# Install PLEX media server on Raspberry Pi

#!/bin/bash

# Install the auth key
curl https://downloads.plex.tv/plex-keys/PlexSign.key | sudo apt-key add -

# Add the repo
echo deb https://downloads.plex.tv/repo/deb public main | sudo tee /etc/apt/sources.list.d/plexmediaserver.list

# Update repo lists
sudo apt update

# Install the package
sudo apt install plexmediaserver

# End of file
