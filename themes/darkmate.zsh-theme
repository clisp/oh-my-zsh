# darkmate theme for zsh prompt
# author: Dylan.Wen <hhkbp2@gmail.com>
# Time-stamp: <2013-09-26 16:07>


#
PROMPT=$'┌[%{$fg_bold[green]%}%D{%m-%d %H:%M:%S}%{$reset_color%}] [%n] [%{$fg[cyan]%}%~%{$reset_color%}] [%{$fg[yellow]%}%h%{$reset_color%}]
└[%{$fg[red]%}%(!.#.$)%{$reset_color%}] '

PS2=$' [%{$fg[red]%}|%{$reset_color%}]> '


ZSH_THEME_GIT_PROMPT_PREFIX="[%{$fg_bold[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}]"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg_bold[magenta]%}*%{$reset_color%}"

ZSH_THEME_HG_PROMPT_PREFIX="[%{$fg_bold[yellow]%}"
ZSH_THEME_HG_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_HG_PROMPT_DIRTY=" %{$fg_bold[magenta]%}*%{$reset_color%}]"

# it's somehow noticeable slow to add $(svn_prompt_info) into prompt
ZSH_THEME_SVN_PROMPT_PREFIX="[%{$fg_bold[yellow]%}"
ZSH_THEME_SVN_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_SVN_PROMPT_DIRTY=" %{$fg_bold[magenta]%}*%{$reset_color%}]"

