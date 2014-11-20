#!/usr/bin/env python

# The prompt
PROMPT=$'
%{$fg[green]%}%~%{$reset_color%} in %{$fg[blue]%}$(current_branch) $(parse_git_dirty)%{$fg[blue]%}%{$reset_color%}
%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[yellow]%}%m %{$fg[magenta]%}%{$reset_color%} '

# The right-hand prompt
RPROMPT='%*'

ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}•%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%}•%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}•%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[yellow]%}•%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="M"
ZSH_THEME_GIT_PROMPT_DELETED="D"
ZSH_THEME_GIT_PROMPT_RENAMED="R"
ZSH_THEME_GIT_PROMPT_UNMERGED="U"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="%{$fg[green]%}ahead%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="%{$fg[red]%}behind%{$reset_color%}"
