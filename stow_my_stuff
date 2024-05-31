#!/bin/bash

check_stow_installed() {
    if command -v stow &> /dev/null
    then
        echo "Stow is installed."
    else
        echo "Stow is not installed."
        exit 1
    fi
}

check_stow_installed

stow alacritty
stow i3
stow nvim
stow picom
stow polybar
stow rofi
stow -t $HOME tmux
