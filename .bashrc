#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# bash aliases

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias code='vscodium'

alias ipconfig="ifconfig wlo1 | grep -w "inet" | awk '{print $1}'"

# get current branch in git repos

function git_branch() {
  git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# multiline_prompt

function multiline_prompt() {
    GREEN='\[\033[01;32m\]'
    BLUE='\[\033[01;34m\]'
    ORANGE='\[\033[38;5;202m\]'
    RESET='\[\033[00m\]'
    
    MODLINE="(${GREEN}\u@\h${RESET})-[${BLUE}\w${RESET}]${ORANGE}\`git_branch\`${RESET}"
export PS1="┌──$MODLINE        
└─\$ "
}

multiline_prompt

# singleline_prompt 

# export PS1="[\u@\h \W]\$(git_branch)\$ "





