#!/usr/bin/env bash

# Stop on error
set -e

# Color constants
COLOR_NORMAL_WHITE='\033[0m'
COLOR_BOLD_CYAN='\033[1;36m'
COLOR_BOLD_GREEN='\033[1;32m'
COLOR_BOLD_YELLOW='\033[1;33m'

# Functions
print_newline() {
  echo ""
}

print_important() {
  echo -e "${COLOR_BOLD_CYAN}$1${COLOR_NORMAL_WHITE}"
}

print_info() {
  echo -e "${COLOR_BOLD_YELLOW}[INFO] $1${COLOR_NORMAL_WHITE}"
}

print_normal() {
  echo -e "${COLOR_NORMAL_WHITE}$1${COLOR_NORMAL_WHITE}"
}

print_command() {
  echo -e "${COLOR_BOLD_GREEN}> $1${COLOR_NORMAL_WHITE}"
}

execute_command() {
  print_command "$1"
  eval "$1"
}

source_bashrc() {
  source ~/.bashrc
}

# Start of execution

#print_important "Setting up git..."
#execute_command "source ./setup-git.sh"

print_newline
print_important "Setting up nvm for nodejs development..."
execute_command "source ./setup-nvm.sh"

# End of execution

# Clean up
unset COLOR_NORMAL_WHITE
unset COLOR_BOLD_CYAN
unset COLOR_BOLD_GREEN
unset COLOR_BOLD_YELLOW

unset print_newline
unset print_important
unset print_info
unset print_normal
unset print_command
unset execute_command
unset source_bashrc
