#!/bin/bash

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
if [ -d "${HOME}/.oh-my-zsh" ]; then
	cp `find "${dir}" -name "*\.zsh"` "${HOME}/.oh-my-zsh/custom/"
	cp `find "${dir}" -name "*\.zsh-theme"` "${HOME}/.oh-my-zsh/custom/themes"
else if [ ! -z "${DOTFILES}" ]; then
	cp `find "${dir}" -name "*\.zsh"` "${ZSH}"
	cp `find "${dir}" -name "*\.zsh-theme"` "${DOTFILES}/themes"
else
	echo "No oh-my-zsh or .dotfiles found in home directory"
fi
