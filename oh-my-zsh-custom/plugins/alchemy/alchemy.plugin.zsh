# Create a new directory and enter it
createDirectoryAndEnter() {
    mkdir -p "$@" && cd "$@"
}

# take this repo and copy it to somewhere else minus the .git stuff.
exportGit() {
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

# Aliases
alias mkd='createDirectoryAndEnter'
alias exportGit='gitTarball'
alias gz='gz'
alias escape='escape'
alias unidecode='unidecode'
