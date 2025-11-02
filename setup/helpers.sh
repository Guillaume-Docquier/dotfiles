#!/usr/bin/env bash

# Color constants
COLOR_NORMAL_WHITE='\033[0m'
COLOR_BOLD_CYAN='\033[1;36m'
COLOR_BOLD_GREEN='\033[1;32m'
COLOR_BOLD_YELLOW='\033[1;33m'
COLOR_BOLD_RED='\033[1;31m'

# Functions

# print "${COLOR_BOLD_GREEN}" "my message"
print() {
  echo -e "$1 $2${COLOR_NORMAL_WHITE}"
}

print_newline() {
  echo ""
}

print_important() {
  print "${COLOR_BOLD_CYAN}" "$1"
}

print_error() {
  print "${COLOR_BOLD_RED}" "[ERROR] $1"
}

print_info() {
  print "${COLOR_BOLD_YELLOW}" "[INFO] $1"
}

print_normal() {
  print "${COLOR_NORMAL_WHITE}" "$1"
}

print_command() {
  print "${COLOR_BOLD_GREEN}" "> $1"
}

execute_command() {
  print_command "$1"
  eval "$1"
}

source_bashrc() {
  source ~/.bashrc # assumed location, might be wrong
}

cleanup() {
  unset SCRIPT_DIR
  unset DOTFILES_DIR

  unset COLOR_NORMAL_WHITE
  unset COLOR_BOLD_CYAN
  unset COLOR_BOLD_GREEN
  unset COLOR_BOLD_YELLOW
  unset COLOR_BOLD_RED

  unset print
  unset print_newline
  unset print_important
  unset print_error
  unset print_info
  unset print_normal
  unset print_command
  unset execute_command
  unset source_bashrc

  unset cleanup
}
