#!/bin/bash

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cp `find "${dir}" -name "*\.zsh"` "${HOME}/.oh-my-zsh/custom/"
cp `find "${dir}" -name "*\.zsh-theme"` "${HOME}/.oh-my-zsh/custom/themes"
