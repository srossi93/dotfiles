#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
update
upgrade

./zsh.sh

./build-essentials.sh
./dev-tools.sh
#./../nvm.sh

#./browsers.sh
./compression_tools.sh
./git.sh
./image_tools.sh
./misc.sh
./misc_tools.sh
#./../npm.sh
./tmux.sh
./../vim.sh

./latex.sh

./cleanup.sh
