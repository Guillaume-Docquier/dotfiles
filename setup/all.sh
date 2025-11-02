#!/usr/bin/env bash

SCRIPT_DIR="$(realpath "$(dirname "${BASH_SOURCE[0]}")")"
DOTFILES_DIR="$(dirname "$SCRIPT_DIR")"

# Load helpers
source "$SCRIPT_DIR/helpers.sh"

# Setup
print_newline
print_important "Setting up bash..."
source "$SCRIPT_DIR/bash.sh"

print_newline
print_important "Setting up git..."
source "$SCRIPT_DIR/git.sh"

print_newline
print_important "Setting up nvm for nodejs development..."
source "$SCRIPT_DIR/nvm.sh"

# Clean up
cleanup

unset SCRIPT_DIR
unset DOTFILES_DIR

