# Dotfiles
This is a collection from stolen items from multiple sources. Please feel free to stole these too. There is support for Bash and ZSH. The ZSH support has [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) as a submodule.

## Installing
1. Clone the repository:
```prompt
git clone --recursive https://github.com/marcol/dotfiles.git "${ZDOTDIR:-$HOME}/.dotfiles"
```
2. Run the instalation script
```prompt
./install.sh
```
3. If you want to use Bash just reload the Terminal If you want to start use ZSH you can set it as your default shell:
```prompt
chsh -s /bin/zsh
```

## Setup extra
The <code>extra</code> file should hold your personal configuration, you can place inside any of the folder of the repository. Do not add it to the git repo.

You can setup the theme and plugins in an extra file:
```bash
ZSH_THEME="alchemy"
plugins=(git tmux copyfile cp extract colorize osx sublime bower)
```

<pre>
GIT_AUTHOR_NAME="Your name"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="youremail@example.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
</pre>

## Docs
* [Bash features](Docs/BASH.md)
* [Git features](Docs/GIT.md)
* [JavaScript code conventions](Docs/CONVENTIONS.md)
* [Check oh-my-shell for the available plugins](http://ohmyz.sh)

## References
* [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
* [robbyrussell/oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)