# Dotfiles
This is a collection from stolen items from multiple sources. Please feel free to stole these too.

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
* ip: <code>dig +short myip.opendns.com @resolver1.opendns.com</code>
* localip: <code>ipconfig getifaddr en1</code>
* ips: <code>ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'</code>
* whois: Enhanced WHOIS lookups
* flush: Flush Directory Service cache
* sniff: View HTTP traffic
* httpdump: View HTTP traffic

### Utilities
* tmux: tmux -2
* please: sudo alias
* reload: reload .bash_profile
* update: updated OS X, Ruby gems, Homebrew, Node, npm, gem
* trimcopy: Trim new lines and copy to clipboard
* cleanup: Recursively delete `.DS_Store` files
* emptytrash: Empty the Trash on all mounted volumes and the main HDD
* lscleanup: Clean up LaunchServices to remove duplicates in the “Open * With” menu
* hidedesktop: Hide desktop
* showdesktop: Show desktop
* chromekill: Kill all the Google Chrome's tabs

### Git
* br: branch
* ci: commit
* ca: Commit all changes
* co: checkout
* up: pull rebase, prunes branches and shows quick diff
* rb: rebase
* ps: push
* cp: Cherry pick
* solve: Solve merges with vimdiff
* st: status
* tags: verbose output of tags
* branches: : verbose output of branches
* remotes: verbose output of remote
* track: Set remote upstream
* cleanup: Remove untracked files, directories
* unstage: remove files from index (tracking)
* uncommit: go back before last commit, with files in uncommitted state
* undopush: <code>git push -f origin HEAD^:master</code>
* amend: Amend your last commit
* df: Pretty diff with abreviation
* dh: Show the diff between the latest commit and the current state
* dci: Diff of unpushed commits
* dlast: Diff last committed
* lg: Pretty log
* g: Grep
* hist: Show history log
* rank: Displays committers in descending order of number of commits
* snapshot: Save a snapshot with date without resetting
* snapshots: List all snapshots

## Functions
* calc: Simple calculator
* mkd: Create a new directory and enter it
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
