#!/bin/bash

cd ..
mv ./.dotnet ~/
cd ./zsh

echo "DOTNET_ROOT=$HOME/.dotnet" >> ~/.zshrc
echo "PATH=$PATH:$HOME/.dotnet" >> ~/.zshrc

source ~/.zshrc
