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

    FILES="${ZDOTDIR:-$HOME}/Users/*"

    for rcfile in $FILES; do
        if [ -e $rcfile ]; then
            echo "sourcing: "$(basename "$rcfile")
            source $rcfile
        fi
    done

}

function setupPrezto() {

    setopt EXTENDED_GLOB

    echo "Setting Prezto"

    ln -s "${ZDOTDIR:-$HOME}/.dotfiles/prezto" "${ZDOTDIR:-$HOME}/.zpreztorc"

    for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
      ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
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
        setupPrezto
        sourceFiles
    fi
fi

unset linkFiles
