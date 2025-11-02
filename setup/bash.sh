#!/usr/bin/env bash

# prompt for bashrc location?
print_normal "Adding personal bash config to bashrc"
echo "source $DOTFILES_DIR/.config/bashrc" >> ~/.bashrc
