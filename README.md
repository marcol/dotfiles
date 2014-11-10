# Dotfiles
This is a collection from stolen items from multiple sources. Please feel free to stole these too. There is support for Bash 4 and ZSH.

## Installing
1. Launch Zsh:
```prompt
zsh
```
2. Clone the repository:
```prompt
git clone --recursive https://github.com/marcol/dotfiles.git "${ZDOTDIR:-$HOME}/.dotfiles"
```
3. Run the instalation script
```prompt
./install.sh
```
4. Set Zsh as your default shell:
```prompt
chsh -s /bin/zsh
```
5. Open a new ZSH terminal window or tab.

## Setup extra
The <code>extra</code> file should hold your personal configuration. Do not add it to the git repo.

<pre>
GIT_AUTHOR_NAME="Your name"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="youremail@example.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
</pre>

You can also add there the singular exports.

## References