#!/bin/sh

# Update repository
echo "Updating repository from Github"
git pull origin zsh
git submodule init
git submodule update

function linkFiles() {

    FILES="${ZDOTDIR:-$HOME}/.dotfiles/System/!(*.md)
        ${ZDOTDIR:-$HOME}/.dotfiles/Bash/!(*.md)
        ${ZDOTDIR:-$HOME}/.dotfiles/JavaScript/!(*.md)
        ${ZDOTDIR:-$HOME}/.dotfiles/Git/!(*.md)
        ${ZDOTDIR:-$HOME}/.dotfiles/User/!(*.md)"

    echo "\n*** Linking files"

    for rcfile in $FILES; do
        if [ -e $rcfile ]; then
            echo "Creating symlink for: ."$(basename "$rcfile")
            ln -fs "$rcfile" "${ZDOTDIR:-$HOME}/."$(basename "$rcfile")
        fi
    done

}

function sourceFiles() {

    FILES="${ZDOTDIR:-$HOME}/.dotfiles/User/!(*.md)"

    echo "\n*** Sourcing files"

    for rcfile in $FILES; do
        if [ -e "${ZDOTDIR:-$HOME}/."$(basename "$rcfile") ]; then
            echo "sourcing: "$(basename "$rcfile")
            source "${ZDOTDIR:-$HOME}/."$(basename "$rcfile")
        fi
    done

}

function setupPrezto() {

    FOLDER="${ZDOTDIR:-$HOME}/.zprezto"
    FILES="${ZDOTDIR:-$HOME}/.zprezto/runcoms/!(*.md)"

    echo "\n*** Setting Prezto"

    rm -rf $FOLDER
    ln -fs "${ZDOTDIR:-$HOME}/.dotfiles/prezto/" $FOLDER

    for rcfile in $FILES; do
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

        shopt -s extglob

        linkFiles
        setupPrezto
        sourceFiles

        shopt -u extglob

    fi

    echo "\nDone!"
fi

unset linkFiles
unset setupPrezto
unset sourceFiles
