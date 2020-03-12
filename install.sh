#!/bin/bash

dir="$(dirname $0)"

if [ -d "${HOME}/.oh-my-zsh" ]; then
	cp `find "${dir}" -name "*\.zsh"` "${HOME}/.oh-my-zsh/custom/"
	cp `find "${dir}" -name "*\.zsh-theme"` "${HOME}/.oh-my-zsh/custom/themes"
elif [ ! -z "${DOTFILES}" -a -d "${DOTFILES}/themes" ]; then
	cp `find "${dir}" -name "*\.zsh"` "${ZSH}"
	cp `find "${dir}" -name "*\.zsh-theme"` "${DOTFILES}/themes"
else
	echo "No oh-my-zsh or .dotfiles/themes found in home directory"
fi
