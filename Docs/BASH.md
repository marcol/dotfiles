# Bash Aliases

## Navigation
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

## Edit
* subl: Open in Sublime Text
* c: cat with beautiful colors. requires Pygments installed.

## Web
* ip: <code>dig +short myip.opendns.com @resolver1.opendns.com</code>
* localip: <code>ipconfig getifaddr en1</code>
* ips: <code>ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'</code>
* whois: Enhanced WHOIS lookups
* flush: Flush Directory Service cache
* sniff: View HTTP traffic
* httpdump: View HTTP traffic

## Utilities
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