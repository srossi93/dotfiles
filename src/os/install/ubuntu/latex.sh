#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   LaTeX\n\n"

if ! cmd_exists "pdflatex"; then
    execute "curl http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz > /tmp/install-tl.tar.gz \
      && tar zxf /tmp/install-tl.tar.gz -C /tmp/\
      && mv /tmp/install-tl-20* /tmp/install-tl \
      && echo selected_scheme scheme-full > /tmp/profile \
      && sudo /tmp/install-tl/install-tl -repository http://mirror.ctan.org/systems/texlive/tlnet -profile /tmp/profile"\
      "TeX Live Full"
fi
