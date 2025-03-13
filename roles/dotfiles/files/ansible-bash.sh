#!/usr/bin/env bash

if test "$BASH" &&\
   test -z "$POSIXLY_CORRECT" &&\
   test "${0#-}" != sh
then

  ### options
  shopt -s autocd        # change to named directory
  shopt -s cdspell       # fuzzy cd
  shopt -s dirspell      # spelling correction
  shopt -s hostcomplete  # complete @ with hostnames
  shopt -s cmdhist       # save multi-line commands in history as single line

  ### color
  alias ls="ls --color=auto"
  alias ip="ip --color=auto"
  alias diff="diff --color=auto"
  alias grep="grep --color=auto"
  alias ssh="TERM=xterm-256color ssh"

  export LESS='-R --use-color -Dd+r$Du+b'
  export MANPAGER='less -R --use-color -Dd+r -Du+b'
  export TERM=xterm-256color

  ### alias
  alias ll='ls -l'
  alias la='ls -a'
  alias ..='cd ..'
  alias rm="rm -i"
  alias cp="cp -i"
  alias mv="mv -i"

  bash_prompt() {
    # colors
    color_reset="\e[0m"
    red="\e[1;91m"
    green="\e[1;32m"
    yellow="\e[1;33m"
    blue="\e[1;34m"
    cyan="\e[01;36m"

    # user color
    user_color="$cyan"
    [[ $UID == 0 ]] && user_color="$red"

    parse_git_branch() {
      git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
    }

    # blue for writable directories, yellow for non-writable directories
    dir_writable="\$(if [[ -w \$PWD ]]; then echo \"\[$blue\]\"; else echo \"\[$yellow\]\"; fi)\w"
    PS1="\[$green\]┌─ \[$user_color\]\u: $dir_writable\[$green\]\n└─$\[$red\]\$(parse_git_branch) \[$color_reset\]"
  }
  bash_prompt
fi
