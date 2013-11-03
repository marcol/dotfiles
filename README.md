# Marco Dias Lopes dotfiles

## Setup .extra
<pre>
GIT_AUTHOR_NAME="Your name"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="youremail@example.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
</pre>

## Installation
<pre>cd dotfiles && ./install.sh</pre>
<pre>cd dotfiles && ./sync.sh</pre>

## Aliases

### Navigation
<pre>
..: cd ..
cd..: cd ..
...: cd ../..
....: cd ../../..
.....: cd ../../../..
~: cd ~ # `cd` is probably faster to type though
-- -:cd -
ll: List all files colorized in long format
la: List all files colorized in long format, including dot files
lsd: List only directories
fs: File size
</pre>

### Edit
<pre>
subl: Open in Sublime Text
c: `cat` with beautiful colors. requires Pygments installed.
</pre>

### Web
<pre>
please: sudo alias
ip="dig +short myip.opendns.com @resolver1.opendns.com"
localip="ipconfig getifaddr en1"
ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
whois=Enhanced WHOIS lookups
flush=Flush Directory Service cache
sniff=View HTTP traffic
httpdump=View HTTP traffic
</pre>

### Utilities
<pre>
trimcopy: Trim new lines and copy to clipboard
cleanup: Recursively delete `.DS_Store` files
emptytrash: Empty the Trash on all mounted volumes and the main HDD
lscleanup: Clean up LaunchServices to remove duplicates in the “Open With” menu
hidedesktop: Hide desktop
showdesktop: Show desktop
</pre>

### Git
<pre>
ci: commit
ca: commit -a
up: pull
rb: rebase
p: push
solve: mergetool --tool=kdiff3
st: status -s -b -unormal
df: diff --color --color-words --abbrev
lg: log --color --graph --pretty=format:&hellip;
undopush: git push -f origin HEAD^:master
hist: log --graph --color=always --pretty='[%C(cyan)%h%Creset]%C(bold cyan)%d%Creset %s' --all
branches: for-each-ref --sort=-committerdate refs/heads/
</pre>

## Functions
<pre>
md: Create a new directory and enter it
f: find shorthand
cdf: cd into whatever is the forefront Finder window
server: Start an HTTP server from a directory, optionally specifying the port
json: Syntax-highlight JSON strings or files
gitexport: Take this repo and copy it to somewhere else minus the .git stuff
gz: Get gzipped size
digga: All the dig info
escape: Escape UTF-8 characters into their 3-byte format
unidecode: Decode \x{ABCD}-style Unicode escape sequences
extract: Extract archives - use: extract, Based on http://dotfiles.org/~pseup/.bashrc
</pre>

## TODO
* Implement .hushlogin
* Implement .path
* Implement .screenrc
* Implement .vimrc
* Implement .zshrc
* Implement .vim/
