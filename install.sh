#!/bin/sh

# Update repository
echo "Updating repository from Github"
git pull origin zsh

function linkFiles() {

    FILES="${ZDOTDIR:-$HOME}/.dotfiles/Other/*
        ${ZDOTDIR:-$HOME}/.dotfiles/Bash/*
        ${ZDOTDIR:-$HOME}/.dotfiles/Git/*"

    for rcfile in $FILES; do
        echo "processing $rcfile"
        if [ -e $rcfile ]; then
            echo "Creating symlink for: ."$(basename "$rcfile")
            ln -fs "$rcfile" "${ZDOTDIR:-$HOME}/."$(basename "$rcfile")
        fi
    done

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
