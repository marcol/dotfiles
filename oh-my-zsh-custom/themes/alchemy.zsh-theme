#!/usr/bin/env python

# The prompt
PROMPT=$'
%{$fg[green]%}%~%{$reset_color%} with %{$fg[blue]%}$(git_prompt_info) $(git_remote_status)
%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[yellow]%}%m %{$fg[magenta]%}%{$reset_color%} '

# The right-hand prompt
RPROMPT='%*'

ZSH_THEME_GIT_PROMPT_PREFIX="["
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[blue]%}]"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$reset_color%}?"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%}*"

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} ⓐ" # ⓐ ⑃
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} ⓜ"  # ⓜ ⑁
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ⓧ" # ⓧ ⑂
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} ⓡ" # ⓡ ⑄
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} ⓤ" # ⓤ ⑊
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[blue]%} 𝝙"
# $ZSH_THEME_GIT_PROMPT_DIVERGED
# $ZSH_THEME_GIT_PROMPT_SHA_AFTER
# $ZSH_THEME_GIT_PROMPT_SHA_BEFORE
