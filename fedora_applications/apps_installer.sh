#! /usr/bin/bash

# tries to create an app images folder on home directory 
mkdir -p ~/Applications_AppImages

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

# install chromium web browser
sudo dnf -y install chromium

# install app images
sudo wget -i ./download_urls.txt -P ~/temp



