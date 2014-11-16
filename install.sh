#!/bin/sh

# Update repository
echo "Updating repository from Github"
git pull origin zsh

function linkFiles() {

    FILES="${ZDOTDIR:-$HOME}/.dotfiles/System/*
        ${ZDOTDIR:-$HOME}/.dotfiles/Bash/*
        ${ZDOTDIR:-$HOME}/.dotfiles/JavaScript/*
        ${ZDOTDIR:-$HOME}/.dotfiles/Git/*
        ${ZDOTDIR:-$HOME}/.dotfiles/User/*"

    for rcfile in $FILES; do
        echo "processing $rcfile"
        if [ -e $rcfile ]; then
            echo "Creating symlink for: ."$(basename "$rcfile")
            ln -fs "$rcfile" "${ZDOTDIR:-$HOME}/."$(basename "$rcfile")
        fi
    done

}

function sourceFiles() {

    FILES="${ZDOTDIR:-$HOME}/.zshrc
        ${ZDOTDIR:-$HOME}/.extra"

    for rcfile in $FILES; do
        if [ -e $rcfile ]; then
            echo "sourcing: "$(basename "$rcfile")
            source $rcfile
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
        sourceFiles
    fi
fi

unset linkFiles
