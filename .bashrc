# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=3000
HISTFILESIZE=6000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
        color_prompt=yes
    else
        color_prompt=
    fi
fi

if [ -n "$TMUX" ]; then
    WINDOW=`tmux display -pt "${TMUX_PANE:?}" '#{pane_index}'`
fi

if [ "$color_prompt" = yes ]; then
    PS1="${debian_chroot:+($debian_chroot)}\[\033[36m\]\h\[\033[0m\]${WINDOW+ \[\033[32m\]W$WINDOW\[\033[0m\]} [\[\033[1;33m\]\w\[\033[0m\]]\\$ "
else
    PS1='${debian_chroot:+($debian_chroot)}\h${WINDOW:+ W$WINDOW} \w \$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls -F --color=auto'
    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'
else
    alias ls='ls -F'
fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi

[[ $- == *i* ]] && stty -ixon
set -o vi

GRC_ALIASES=true
[[ -s "etcj"]]

# command-line fuzzy finder
export FZF_DEFAULT_COMMAND='fd'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND -t f"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND -t d"

case $(lsb_release -si) in
Ubuntu)
    [[ -s "/usr/share/doc/fzf/examples/key-bindings.bash" ]] && source /usr/share/doc/fzf/examples/key-bindings.bash
    [[ -s "/usr/share/doc/fzf/examples/completion.bash" ]] && source /usr/share/doc/fzf/examples/completion.bash
    [[ -s "/etc/profile.d/grc.sh" ]] && source /etc/profile.d/grc.sh
    ;;
Gentoo)
    [[ -s "/usr/share/fzf/key-bindings.bash" ]] && source /usr/share/fzf/key-bindings.bash
    [[ -s "/usr/share/bash-completion/completions/fzf" ]] && soure /usr/share/bash-completion/completions/fzf
    [[ -s "/usr/share/grc/grc.sh" ]] && source /usr/share/grc/grc.sh
    ;;
esac

if [ -f ~/.sh_common ]; then
    . ~/.sh_common
fi

