#!/bin/bash
# for Fedora
sudo dnf install gcc g++ openssl-devel bzip2-devel sqlite-devel 
# for ubuntu

# get nvm and node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

source ~/.bash_profile
. 'C:\Users\rory_flynn\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1'
ls C:\Users\rory_flynn\Documents
. $profile
nvm  ls-remote
nvm install --lts


