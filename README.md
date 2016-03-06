# My Dotfiles
This is a collection from stolen items from multiple sources. Please feel free to stole these too. There is support for Bash and ZSH. The ZSH support has [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) as a submodule.

## Installing
1. Clone the repository:
```prompt
git clone --recursive https://github.com/marcol/dotfiles.git "${ZDOTDIR:-$HOME}/.dotfiles"
```
2. Run the instalation script
```prompt
cd "${ZDOTDIR:-$HOME}/.dotfiles"
./install.sh
```
3. If you want to use Bash just reload the Terminal If you want to start use ZSH you can set it as your default shell:
```prompt
chsh -s /bin/zsh
```

## Configuring
If further configuration is needed, it can be done by adding a file named <code>extra</code> in any of the folders, or a file named <code>.extra</code> directly in the home folder.

In case of zsh, several configuration files can be added as long as they start with extra, e.g.: extra-home.

### ZSH
A zsh theme and/or plugins can be setup this way:
```bash
ZSH_THEME="alchemy"
plugins=(git tmux copyfile cp extract colorize osx sublime bower)
```

### Git
Git configuration, names and emails should not be part of the git repository for obvious reasons, they should be defined in one of these configuration files.

```bash
GIT_AUTHOR_NAME="Your name"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="youremail@example.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
```


## Documentation
* [Bash](docs/BASH.md)
* [Git](docs/GIT.md)
* [ZSH Alchemy Plugin](docs/ZSH-ALCHEMY.md)


## References
* [Check oh-my-shell for the available plugins](http://ohmyz.sh)
* [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
* [robbyrussell/oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
