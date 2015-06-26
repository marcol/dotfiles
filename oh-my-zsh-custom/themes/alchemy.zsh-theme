#!/usr/bin/env python

alchemy_git_branch() {

    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return

    echo "${ref#refs/heads/}"

}

alchemy_git_status() {

    _index=$(command git status --porcelain -b 2> /dev/null)
    _status=""

    if $(echo "$_index" | grep '^[AMRD]. ' &> /dev/null); then
        _status="$_status$ZSH_THEME_GIT_PROMPT_STAGED"
    fi
    if $(echo "$_index" | grep '^.[MTD] ' &> /dev/null); then
        _status="$_status$ZSH_THEME_GIT_PROMPT_UNSTAGED"
    fi
    if $(echo "$_index" | grep -E '^\?\? ' &> /dev/null); then
        _status="$_status$ZSH_THEME_GIT_PROMPT_UNTRACKED"
    fi
    if $(echo "$_index" | grep '^UU ' &> /dev/null); then
        _status="$_status$ZSH_THEME_GIT_PROMPT_UNMERGED"
    fi
    if $(command git rev-parse --verify refs/stash >/dev/null 2>&1); then
        _status="$_status$ZSH_THEME_GIT_PROMPT_STASHED"
    fi
    if $(echo "$_index" | grep '^## .*ahead' &> /dev/null); then
        _status="$_status$ZSH_THEME_GIT_PROMPT_AHEAD"
    fi
    if $(echo "$_index" | grep '^## .*behind' &> /dev/null); then
        _status="$_status$ZSH_THEME_GIT_PROMPT_BEHIND"
    fi
    if $(echo "$_index" | grep '^## .*diverged' &> /dev/null); then
        _status="$_status$ZSH_THEME_GIT_PROMPT_DIVERGED"
    fi

    if [[ $_status == "" ]]; then
        _status="$ZSH_THEME_GIT_PROMPT_CLEAN"
    fi

    echo $_status
}

alchemy_git_prompt() {

    local branch=$(alchemy_git_branch)
    local prompt=""

    if [[ "${branch}x" != "x" ]]; then
        prompt="in %{$fg[green]%}$(current_branch) $(alchemy_git_status)%{$fg[blue]%}%{$reset_color%}"
    fi
    
    echo $prompt
}

ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}•%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[yellow]%}•%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%}•%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}•%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNSTAGED="%{$fg[red]%}•%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="M"
ZSH_THEME_GIT_PROMPT_DELETED="D"
ZSH_THEME_GIT_PROMPT_RENAMED="R"
ZSH_THEME_GIT_PROMPT_UNMERGED="U"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[green]%}▴%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg[red]%}▾%{$reset_color%}"

# The prompt
PROMPT=$'
%{$fg[blue]%}%~%{$reset_color%} $(alchemy_git_prompt)
%{$fg[cyan]%}%n%{$reset_color%}@%{$fg[yellow]%}%m %{$fg[magenta]%}%{$reset_color%} '

# The right-hand prompt
RPROMPT='%*'
