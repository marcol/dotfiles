# Marco Dias Lopes dotfiles

## Setup .extra
The <code>.extra</code> should hold your personal configuration. Do not add it to the git repo.

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
* ..: cd ..
* cd..: cd ..
* ...: cd ../..
* ....: cd ../../..
* .....: cd ../../../..
* ~: cd ~ # `cd` is probably faster to type though
* -- -:cd -
* ll: List all files colorized in long format
* la: List all files colorized in long format, including dot files
* lsd: List only directories
* fs: File size

### Edit
* subl: Open in Sublime Text
* c: cat with beautiful colors. requires Pygments installed.

### Web
* please: sudo alias
* ip: <code>dig +short myip.opendns.com @resolver1.opendns.com</code>
* localip: <code>ipconfig getifaddr en1</code>
* ips: <code>ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'<code>
* whois: Enhanced WHOIS lookups
* flush: Flush Directory Service cache
* sniff: View HTTP traffic
* httpdump: View HTTP traffic

### Utilities
* trimcopy: Trim new lines and copy to clipboard
* cleanup: Recursively delete `.DS_Store` files
* emptytrash: Empty the Trash on all mounted volumes and the main HDD
* lscleanup: Clean up LaunchServices to remove duplicates in the “Open * With” menu
* hidedesktop: Hide desktop
* showdesktop: Show desktop

### Git
* br: branch
* ci: commit
* ca: Commit all changes
* co: checkout
* up: pull
* rb: rebase
* ps: push
* pl: pull
* solve: mergetool --tool=kdiff3
* st: status -s -b -unormal
* tags: verbose output of tags
* remotes: verbose output of remote
* branches: : verbose output of branches
* unstage: remove files from index (tracking)
* uncommit: go back before last commit, with files in uncommitted state
* undopush: git push -f origin HEAD^:master
* amend: Amend your last commit
* cp: Grab a change from a branch
* df: diff --color --color-words --abbrev
* dh: Show the diff between the latest commit and the current state
* di: git di $number` shows the diff between the state `$number` revisions ago and the current state
* dc: Diff what is staged
* dlast: Diff last committed
* lg: log --color --graph --pretty=format:&hellip;
* g: grep -I
* hist: log --graph --color=always --pretty='[%C(cyan)%h%Creset]%C(* bold cyan)%d%Creset %s' --all
* cleanup: Remove untracked files, directories and removed stashed states
* who: Displays committers in descending order of number of commits
* snapshot: Save a snapshot with date without resetting
* snapshots: List all snapshots

## Functions
* calc: Simple calculator
* md: Create a new directory and enter it
* f: find shorthand
* cdf: cd into whatever is the forefront Finder window
* server: Start an HTTP server from a directory, optionally specifying the port
* json: Syntax-highlight JSON strings or files
* gitexport: Take this repo and copy it to somewhere else minus the .git stuff
* gz: Get gzipped size
* digga: All the dig info
* escape: Escape UTF-8 characters into their 3-byte format
* unidecode: Decode \x{ABCD}-style Unicode escape sequences
* extract: Extract archives - use: extract, Based on http://dotfiles.org/~pseup/.bashrc
* width: Image width
* height: Image height

## TODO
* Implement .vimrc
* Implement .vim/
