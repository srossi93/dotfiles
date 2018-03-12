#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   ZSH\n\n"

install_package "ZSH" "zsh"

execute "curl https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh \
         > ~/Downloads/install_oh-my-zsh.sh &&
         sudo sh ~/Downloads/install_oh-my-zsh.sh &&
         rm -rf ~/Downloads/install_oh-my-zsh.sh"  \
    "oh my zsh"
