#! /usr/bin/bash

# tries to create an app images folder on home directory 
mkdir -p /home/matheus/Applications_AppImages

mkdir -p ~/temp

# enables rpm fusion free and nonfree 
sudo dnf -y install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# explicitely enable openh264 library (rpm fusion)
sudo dnf config-manager --enable fedora-cisco-openh264

# setting necessary packages to play videos on browsers
sudo dnf -y swap ffmpeg-free ffmpeg --allowerasing

sudo dnf -y groupupdate multimedia --setopt="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin

sudo dnf -y groupupdate sound-and-video

# install zsh
sudo dnf -y install zsh

# install ohmyzsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#https://github.com/kotatogram/kotatogram-desktop/releases/download/k1.4.8/1.4.8-linux.tar.xz

# install chromium web browser
sudo dnf -y install chromium

