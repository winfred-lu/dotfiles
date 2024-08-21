# -*- mode: sh -*-
export GPG_TTY=$(tty)

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# The following lines were added by compinstall
zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' ignore-parents parent pwd .. directory
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=** r:|=**' 'l:|=* r:|=*'
zstyle :compinstall filename '/home/winfred/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# history
HISTFILE=~/.history
HISTSIZE=3000
SAVEHIST=6000
export HISTORY_IGNORE="(ls*|b|exit|clear|cd|cd -|cd ..)"
setopt INC_APPEND_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS

# key bindings
bindkey -v
bindkey -M viins 'kj' vi-cmd-mode
bindkey '^R' history-incremental-search-backward
bindkey "\e[3~" delete-char
bindkey '\e[C' forward-char
bindkey '\e[D' backward-char
bindkey '\e^?' backward-delete-word
bindkey -s '\eu' 'cd ..^M'
bindkey -s '\ep' 'dirs -v^M'

[[ -o login ]] && stty -ixon
setopt AUTO_CD
setopt AUTO_PUSHD
setopt CORRECT
setopt CORRECTALL
setopt NO_FLOW_CONTROL
setopt NO_CLOBBER
setopt RM_STAR_WAIT
set ignoreeof on

# prompt (overwitten by powerlevel10k theme)
PROMPT='%F{5}%m %F{6}%~ %(!.%F{1}.%f)%#%f '
setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' actionformats '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats       '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{5}]%f '
zstyle ':vcs_info:cvs:*' formats   '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%r%F{5}]%f '
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'
zstyle ':vcs_info:*' enable git cvs svn
vcs_info_wrapper() {
  vcs_info
  if [ -n "$vcs_info_msg_0_" ]; then
    echo "%{$fg[grey]%}${vcs_info_msg_0_}%{$reset_color%}$del"
  fi
}
RPROMPT=$'$(vcs_info_wrapper)'

autoload run-help
bindkey '\eh' run-help

# command-line fuzzy finder
export FZF_DEFAULT_COMMAND='fd'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND -t f"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND -t d"

case $(lsb_release -si) in
Ubuntu)
    [[ -s "/usr/share/doc/fzf/examples/key-bindings.zsh" ]] && source /usr/share/doc/fzf/examples/key-bindings.zsh
    [[ -s "/usr/share/doc/fzf/examples/completion.zsh" ]] && source /usr/share/doc/fzf/examples/completion.zsh
    [[ -s "/etc/grc.zsh" ]] && source /etc/grc.zsh
    ;;
Gentoo)
    [[ -s "/usr/share/fzf/key-bindings.zsh" ]] && source /usr/share/fzf/key-bindings.zsh
    [[ -s "/usr/share/zsh/site-functions/_fzf" ]] && source /usr/share/zsh/site-functions/_fzf
    [[ -s "/usr/share/grc/grc.zsh" ]] && source /usr/share/grc/grc.zsh
    ;;
esac

# common configurations
[[ -s ~/.sh_common ]] && source ~/.sh_common

# required to install powerlevel10k zsh theme in advance
[[ ! -f ~/powerlevel10k.zsh-theme ]] || source ~/powerlevel10k.zsh-theme

# powerlevel10k theme customizations
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
