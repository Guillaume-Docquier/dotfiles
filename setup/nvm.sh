#!/usr/bin/env bash

LATEST_NVM_VERSION=$(curl -s https://api.github.com/repos/nvm-sh/nvm/releases/latest | grep '"tag_name":' | cut -d'"' -f4)

print_normal "Installing nvm $LATEST_NVM_VERSION..."
execute_command "curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/$LATEST_NVM_VERSION/install.sh | bash"
source_bashrc
print_normal "Installed nvm $(nvm -v)"

print_newline
print_normal "Installing nodejs lts..."
execute_command "nvm install --lts"
execute_command "nvm alias default node"
print_normal "Installed node $(node -v) and npm $(npm -v)"

print_newline
print_normal "Setting up npm scripts autocompletion"
npm completion >> ~/.bashrc
source_bashrc

# Clean up
unset LATEST_NVM_VERSION
