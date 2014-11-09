#!/bin/sh

# setopt EXTENDED_GLOB
# for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
#   ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
# done

# Update repository
echo "Updating repository from Github"
git pull origin zsh

function linkFiles() {

    for rcfile in "${ZDOTDIR:-$HOME}"/.dotfiles/Other/; do
        ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
    done

    source ~/.zshrc
}

# link files
if [ "$1" == "--force" -o "$1" == "-f" ]; then
    linkFiles
else
    read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        linkFiles
    fi
fi

unset linkFiles
