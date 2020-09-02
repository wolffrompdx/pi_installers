# install_motioneye.sh
# Last edited: 11/20/2019

# Install motioneye

# install ffmpeg and other motion dependencies
apt-get install ffmpeg libmariadb3 libpq5 libmicrohttpd12

# Install motion version 4.2
wget https://github.com/Motion-Project/motion/releases/download/release-4.2.2/pi_buster_motion_4.2.2-1_armhf.deb
dpkg -i pi_buster_motion_4.2.2-1_armhf.deb

# Install additional dependencies
apt-get install python-pip python-dev libssl-dev libcurl4-openssl-dev libjpeg-dev libz-dev python-pil

# Install motioneye via pip (Python package manager)
pip install motioneye

# Create the config directory
mkdir -p /etc/motioneye

# Create the config file
cp /usr/local/share/motioneye/extra/motioneye.conf.sample /etc/motioneye/motioneye.conf

# Create the media folder
mkdir -p /var/lib/motioneye

# Create init script, start motioneye on boot, start the motioneye server
cp /usr/local/share/motioneye/extra/motioneye.systemd-unit-local /etc/systemd/system/motioneye.service
systemctl daemon-reload
systemctl enable motioneye
systemctl start motioneye

# End of file
