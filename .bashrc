# Overall
HISTSIZE=5000
HISTFILESIZE=10000
shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# GO
export GOROOT=/usr/local/go
export GOROOT_BOOTSTRAP=/usr/local/go

# Common aliases
alias h='history'
alias hs='function _hs(){ history | grep $1; };_hs'
alias hsc='function _hsc(){ history | grep -1 "$1 $2 $3 $4 $5"; };_hsc'
alias gp='function _gp(){ grep --color -rin $1 $2; };_gp'
alias gg='function _gg(){ grep --color --include="*.go" -irn $1 *; };_gg'
alias ll='ls -lath'
alias lll='ls -lath | less'
alias lls='ls -lathS'
alias rmr='rm -rf'

# Git 
alias gpush='git push origin master'
alias gpull='git pull origin master'
alias gd='git diff'
alias gs='git status'
alias gf='git fetch' 
alias gb='git branch'
alias gcm='git checkout master'
alias ga='git add'
alias gaa='git add -A .'
alias gm='git commit'
alias gl='git log --decorate --all --oneline --graph'

# Makefile 
alias mkae='make' 
alias mak='make'
alias mk='make'

# Misc Commands
alias vimr='vim -R'

# mac osx specific
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# Includes customization in .bashrc-custom
if [ -f ~/.bashrc-custom ]; then
  source ~/.bashrc-custom
fi
