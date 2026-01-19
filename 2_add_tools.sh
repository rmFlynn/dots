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

./kickstart/plugins/autoformat.lua
./kickstart/plugins/autoformat.so
./kickstart.so
       no field package.preload['kickstart.plugins.autoformat']
        no file './kickstart/plugins/autoformat.lua'
        no file '/home/runner/work/neovim/neovim/.deps/usr/share/luajit-2.1/kickstart/plugins/autoformat.lua'
        no file '/usr/local/share/lua/5.1/kickstart/plugins/autoformat.lua'
        no file '/usr/local/share/lua/5.1/kickstart/plugins/autoformat/init.lua'
        no file '/home/runner/work/neovim/neovim/.deps/usr/share/lua/5.1/kickstart/plugins/autoformat.lua'
        no file '/home/runner/work/neovim/neovim/.deps/usr/share/lua/5.1/kickstart/plugins/autoformat/init.lua'
        no file './kickstart/plugins/autoformat.so'
        no file '/usr/local/lib/lua/5.1/kickstart/plugins/autoformat.so'
        no file '/home/runner/work/neovim/neovim/.deps/usr/lib/lua/5.1/kickstart/plugins/autoformat.so'
        no file '/usr/local/lib/lua/5.1/loadall.so'
        no file './kickstart.so'
        no file '/usr/local/lib/lua/5.1/kickstart.so'
        no file '/home/runner/work/neovim/neovim/.deps/usr/lib/lua/5.1/kickstart.so'
        no file '/usr/local/lib/lua/5.1/loadall.so'


