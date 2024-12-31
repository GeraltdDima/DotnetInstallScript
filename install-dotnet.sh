#!/bin/bash

echo "Installing wget"
sudo apt install wget

echo "Installing tar"
sudo apt install tar

echo "Installing dotnet"
wget https://download.visualstudio.microsoft.com/download/pr/d74fd2dd-3384-4952-924b-f5d492326e35/e91d8295d4cbe82ba3501e411d78c9b8/dotnet-sdk-9.0.101-linux-x64.tar.gz -O dotnet-sdk.tar.gz

mkdir ~/.dotnet
mv ./dotnet-sdk.tar.gz ~/.dotnet

cd ~/.dotnet

tar -xzvf ./dotnet-sdk.tar.gz
rm ./dotnet-sdk.tar.gz

echo "export DOTNET_ROOT=$HOME/.dotnet" >> ~/.zshrc
echo "export PATH=$PATH:$HOME/.dotnet" >> ~/.zshrc

source ~/.zshrc
