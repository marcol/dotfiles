#!/bin/sh

# setopt EXTENDED_GLOB
# for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
#   ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
# done

# Update repository
echo "Updating repository from Github"
git pull origin zsh

function linkFiles() {
# rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
#     --exclude ".vim/bundle/vim-javascript-syntax/.git/" \
#     --exclude ".vim/bundle/vim-javascript/.git" \
#     --exclude ".vim/bundle/vim-javascript-syntax/.git" \
#     --exclude "README.md" --exclude "LICENSE" \
#     --exclude "tasks.todo" --exclude "terminal" \
#     --exclude "install.sh" --exclude "sync.sh" \
#     --exclude "dotfiles.sublime-project" --exclude "dotfiles.sublime-workspace" -av --no-perms . ~
# source ~/.bash_profile
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
