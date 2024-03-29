#! /usr/bin/bash

mkdir -p ~/temp

# install vscode
# https://code.visualstudio.com/docs/setup/linux
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

dnf check-update
sudo dnf install code

# install .net 8 sdk 
sudo dnf install dotnet-sdk-8.0

# install latest node js
sudo dnf install nodejs

# Angular CLI
sudo npm install -g @angular/cli
