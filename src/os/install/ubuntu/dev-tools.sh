#/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Dev Tools\n\n"


# Install tools for compiling/building software from source.
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_package "Python 2.7" "python2.7"
install_package "Python 3"   "python3"
install_package "Python2 Package Manager" "python-pip"
install_package "Python3 Package Manager" "python3-pip"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

add_ppa "webupd8team/atom" \
        || print_error "Atom (add PPA)"

update &> /dev/null \
        || print_error "Atom (resync package index files)"

install_package "Atom"       "atom"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_package "CMake"      "cmake"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

execute "curl https://packages.microsoft.com/keys/microsoft.asc |\
         gpg --dearmor > ~/Downloads/microsoft.gpg && \
         sudo mv ~/Downloads/microsoft.gpg \
                 /etc/apt/trusted.gpg.d/microsoft.gpg && \
         sudo sh -c  'echo \"deb [arch=amd64]  https://packages.microsoft.com/repos/vscode stable main\" \
              > /etc/apt/sources.list.d/vscode.list'"  \
        "Microsoft repos"

update &> /dev/null \
        || print_error "Microsoft repos (resync package index files)"

install_package "Visual Studio Code" "code"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
