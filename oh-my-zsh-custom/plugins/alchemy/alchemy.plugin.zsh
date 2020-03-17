# Create a new directory and enter it
function createDirectoryAndEnter() {
    mkdir -p "$@" && cd "$@"
}

# take this repo and copy it to somewhere else minus the .git stuff.
function gitTarball() {
    mkdir -p "$1"
    git archive master | tar -x -C "$1"
}

# get gzipped size
function gz() {
    echo "orig size    (bytes): "
    cat "$1" | wc -c
    echo "gzipped size (bytes): "
    gzip -c "$1" | wc -c
}

# Escape UTF-8 characters into their 3-byte format
function escape() {
    printf "\\\x%s" $(printf "$@" | xxd -p -c1 -u)
    echo # newline
}

# Decode \x{ABCD}-style Unicode escape sequences
function unidecode() {
    perl -e "binmode(STDOUT, ':utf8'); print \"$@\""
    echo # newline
}

# Function aliases
alias mkd='createDirectoryAndEnter'
alias exportGit='gitTarball'
alias gz='gz'
alias escape='escape'
alias unidecode='unidecode'

# Other aliases
# File size
alias fs="stat -f \"%z bytes\""

# Recursively delete `.DS_Store` files
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias killchrome="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

# Update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='brew update; brew upgrade; brew cleanup; npm update npm -g; npm update -g; sudo gem update'
