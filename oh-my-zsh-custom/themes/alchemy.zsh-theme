#!/usr/bin/env python

# The prompt

PROMPT=$'
%{$fg[green]%}[%c] %{$fg[magenta]%}%{$reset_color%} '

# The right-hand prompt

# RPROMPT='${time} %{$fg[magenta]%}$(git_prompt_info)%{$reset_color%}$(git_prompt_status)%{$reset_color%}$(git_prompt_ahead)%{$reset_color%}'
RPROMPT=''
# local time, color coded by last return code
# time_enabled="%(?.%{$fg[green]%}.%{$fg[red]%})%*%{$reset_color%}"
# time_disabled="%{$fg[green]%}%*%{$reset_color%}"
# time=$time_enabled

# ZSH_THEME_GIT_PROMPT_PREFIX=" ☁  %{$fg[red]%}"
# ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%} ☂" # Ⓓ
# ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭" # ⓣ
# ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ☀" # Ⓞ

# ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} ✚" # ⓐ ⑃
# ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} ⚡"  # ⓜ ⑁
# ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖" # ⓧ ⑂
# ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} ➜" # ⓡ ⑄
# ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} ♒" # ⓤ ⑊
# ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[blue]%} 𝝙"
