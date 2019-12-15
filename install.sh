#!/bin/sh

# Update repository
echo "Updating repository from Github"
git submodule init
git submodule update

function linkFiles() {

  FILES="${ZDOTDIR:-$HOME}/.dotfiles/Config/!(*.md)
    ${ZDOTDIR:-$HOME}/.dotfiles/Bash/!(*.md)
    ${ZDOTDIR:-$HOME}/.dotfiles/User/!(*.md)
    ${ZDOTDIR:-$HOME}/.dotfiles/Zsh/!(*.md)"

  echo "\n*** Linking files"

  for rcfile in $FILES; do
    if [ -e $rcfile ]; then
      echo "Creating symlink for: ."$(basename "$rcfile")
      ln -fs "$rcfile" "${ZDOTDIR:-$HOME}/."$(basename "$rcfile")
    fi
  done

  echo 'Create symlink for .atom/'
  rm -rf "${ZDOTDIR:-$HOME}/."$(basename "atom")
  ln -fs "${ZDOTDIR:-$HOME}/.dotfiles/atom" "${ZDOTDIR:-$HOME}/."$(basename "atom")

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
    shopt -u extglob
  fi
fi

read -p "Do you want to install Homebrew? (y/n) " -n 1
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
  echo "Installing Homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

read -p "Do you want to install Homebrew dependencies? (y/n) " -n 1
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
  echo "Installing Homebrew dependencies"
  brew bundle --file=$HOME/.brewrc
fi

echo "\nDone!"

unset linkFiles
