#!/usr/bin/env python

# The prompt
PROMPT=$'
%{$fg[green]%}%~%{$reset_color%} in %{$fg[blue]%}$(current_branch)[$(parse_git_dirty)$(git_remote_status)]
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
ZSH_THEME_GIT_PROMPT_AHEAD="⑃"
ZSH_THEME_GIT_PROMPT_DIVERGED="⑂"
# ZSH_THEME_GIT_PROMPT_SHA_AFTER=""
# ZSH_THEME_GIT_PROMPT_SHA_BEFORE=""
