# Adjust root filesystem

export DEBIAN_FRONTEND=noninteractive

# Update the box
apt-get -qqy update
apt-get -qqy install linux-headers-$(uname -r) build-essential

# Install development tools
apt-get -qqy install zlib1g-dev libssl-dev libreadline-gplv2-dev \
  curl wget vim mc screen zsh unzip pbzip2 lsof htop iotop dstat \
  telnet tcpdump make python python-apt ruby \
  openjdk-7-jre

# Remove unneeded items
apt-get purge exim4 exim4-base

# Set up sudo
echo 'vagrant ALL=NOPASSWD:ALL' > /etc/sudoers.d/vagrant

# Disable barriers on root filesystem
sed -i 's/noatime,errors/barrier=0,noatime,errors/' /etc/fstab

# Tweak sshd to prevent DNS resolution (speed up logins)
echo 'UseDNS no' >> /etc/ssh/sshd_config

# Remove 5s grub timeout to speed up booting
cat <<EOF > /etc/default/grub
# If you change this file, run 'update-grub' afterwards to update
# /boot/grub/grub.cfg.

GRUB_DEFAULT=0
GRUB_TIMEOUT=0
GRUB_DISTRIBUTOR=`lsb_release -i -s 2> /dev/null || echo Debian`
GRUB_CMDLINE_LINUX_DEFAULT="quiet"
GRUB_CMDLINE_LINUX="debian-installer=en_US"
EOF

update-grub
