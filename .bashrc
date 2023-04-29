#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# bash aliases

alias ls='ls --color=auto' 
alias ipconfig="ifconfig wlo1 | grep -w "inet" | awk '{print $1}'"


# ls aliases

alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"


# confirm before overwriting something

alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'


# adding flags

alias df='df -h'                          
alias free='free -m'
alias grep='grep --color=auto'
alias code='vscodium'


# git aliases

alias gl="git log --graph --decorate --oneline"
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gb="git branch"


# shortcuts

alias c='clear'
alias h='history'
alias ports='sudo netstat -tulanp'


# navigation

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ~='cd ~'


# Colorize grep output 

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'


# confirm before overwriting something

alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'


# adding flags

alias df='df -h'
alias free='free -h'                      


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





