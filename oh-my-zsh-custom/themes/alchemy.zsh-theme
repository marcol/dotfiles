#!/usr/bin/env python

function prompt_git_info() {
    if [ -n "$__CURRENT_GIT_STATUS" ]; then
        echo "(%{${fg[red]}%}$__CURRENT_GIT_STATUS[1]%{${fg[default]}%}$__CURRENT_GIT_STATUS[2]%{${fg[magenta]}%}$__CURRENT_GIT_STATUS[3]%{${fg[default]}%})"
    fi
}

# The prompt
PROMPT=$'
%{$fg[green]%}%~%{$reset_color%} in %{$fg[blue]%}$(current_branch)[$(parse_git_dirty)]%{$reset_color%} ($(git_remote_status))
%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[yellow]%}%m %{$fg[magenta]%}%{$reset_color%} '

# The right-hand prompt
RPROMPT='%*'

# ZSH_THEME_GIT_PROMPT_PREFIX=""
# ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="?"
ZSH_THEME_GIT_PROMPT_CLEAN="*"
ZSH_THEME_GIT_PROMPT_ADDED="+"
ZSH_THEME_GIT_PROMPT_MODIFIED="M"
ZSH_THEME_GIT_PROMPT_DELETED="D"
ZSH_THEME_GIT_PROMPT_RENAMED="R"
ZSH_THEME_GIT_PROMPT_UNMERGED="U"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="%{$fg[green]%}ahead%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="%{$fg[red]%}behind%{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE=""
# ZSH_THEME_GIT_COMMITS_AHEAD_PREFIX=""
# ZSH_THEME_GIT_COMMITS_AHEAD_SUFFIX=""
# ZSH_THEME_GIT_PROMPT_SHA_AFTER=""
# ZSH_THEME_GIT_PROMPT_SHA_BEFORE=""
