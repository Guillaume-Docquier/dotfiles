#!/usr/bin/env bash

LATEST_NVM_VERSION=$(curl -s https://api.github.com/repos/nvm-sh/nvm/releases/latest | grep '"tag_name":' | cut -d'"' -f4)

echo Installing nvm "$LATEST_NVM_VERSION"...
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/$LATEST_NVM_VERSION/install.sh | bash
source ~/.bashrc # Location assumed, might not be correct
echo Installed nvm "$(nvm -v)"

echo Installing nodejs lts...
nvm install --lts
nvm alias default node
echo Installed node "$(node -v)" and npm "$(npm -v)"

echo Setting up npm scripts autocompletion
npm completion >> ~/.bashrc
source ~/.bashrc # Location assumed, might not be correct

