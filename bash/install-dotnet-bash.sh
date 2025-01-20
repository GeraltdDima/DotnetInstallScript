#!/bin/bash

cd ..
mv ./.dotnet ~/
cd ./bash

echo "export DOTNET_ROOT=$HOME/.dotnet" >> ~/.bashrc
echo "export PATH=$PATH:$HOME/.dotnet" >> ~/.bashrc

source ~/.bashrc
