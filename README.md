# My Dotfiles
This is a collection from stolen items from multiple sources. Please feel free to stole these too. There is support for Bash and ZSH. The ZSH support has [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) as a submodule.

## Installing
1.  Clone the repository:
```prompt
git clone --recursive https://github.com/marcol/dotfiles.git "${ZDOTDIR:-$HOME}/.dotfiles"
```

2. Check the Configuring part

3.  Run the instalation script
```prompt
cd "${ZDOTDIR:-$HOME}/.dotfiles"
./install.sh
```
4.  If you want to use Bash just reload the Terminal If you want to start use ZSH you can set it as your default shell:
```prompt
chsh -s /bin/zsh
```

## Configuring
If further configuration is needed, it can be done by adding a file named `extra` in any of the folders and run the install script, or a file named `.extra` directly in the home folder.

In case of zsh, several configuration files can be added as long as they start with extra, e.g.: `extra-home`.

### ZSH
A zsh theme and/or plugins can be setup this way:
```bash
ZSH_THEME="alchemy"
plugins=(git tmux copyfile cp extract colorize osx)
```

### Git
Git configuration, names and emails should not be part of the git repository for obvious reasons. You can create the file `.gitconfig-extra` that will be included by `.gitconfig`. Add the follwing content to  `.gitconfig-extra`:

```bash
[user]
  name = "First Last"
  email = "youremail@example.com"
```

## Documentation
*   [Bash](docs/BASH.md)
*   [Git](docs/GIT.md)
*   [ZSH Alchemy Plugin](docs/ZSH-ALCHEMY.md)

## References
*   [Check oh-my-shell for the available plugins](http://ohmyz.sh)
*   [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
*   [robbyrussell/oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
