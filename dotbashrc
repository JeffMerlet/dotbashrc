# Customize your development root folder
export DEV_ROOT="$HOME"

# Overall
HISTSIZE=5000
HISTFILESIZE=10000
shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# VAGRANT
export VAGRANT_HOME="$DEV_ROOT"/vms/vagrant
export VAGRANT_DOTFILE_PATH="$DEV_ROOT"/vms/vagrant
export VAGRANT_CWD="$DEV_ROOT"/vms/vagrant

# JAVA
export ANT_HOME=/usr/local/bin/ant

# GO
export GOROOT=/usr/local/go
export GOROOT_BOOTSTRAP=/usr/local/go
export GOPATH="$DEV_ROOT"/go
if [ ! -d "$GOPATH"/bin ]; then
  mkdir "$GOPATH"/bin
fi
export PATH="$GOPATH"/bin:"$DEV_ROOT"/go/go_appengine:"$GOROOT"/bin:$PATH

# Common aliases
alias h='history'
alias hs='function _hs(){ history | grep $1; };_hs'
alias hsc='function _hsc(){ history | grep -1 "$1 $2 $3 $4 $5"; };_hsc'
alias gg='function _gg(){ grep -in $1 *.go; };_gg'
alias ll='ls -lath'
alias lll='ls -lath | less'
alias lls='ls -lathS'
alias rmr='rm -rf'

# Git 
alias gpush='git push origin master'
alias gpull='git pull origin master'
alias gd='git diff'
alias gs='git status'
alias ga='git add'
alias gaa='git add -A .'
alias gm='git commit'
alias gl='git log --decorate --all --oneline --graph'

#brew
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# Google Cloud
# The next line updates PATH for the Google Cloud SDK.
source "$DEV_ROOT"/tools/google-cloud-sdk/path.bash.inc
# The next line enables shell command completion for gcloud.
source "$DEV_ROOT"/tools/google-cloud-sdk/completion.bash.inc
export PATH=$PATH:"$DEV_ROOT"/tools/google/google-cloud-sdk/bin/

# Includes customization in .bashrc-custom
if [ -f ~/.bashrc-custom ]; then
  source ~/.bashrc-custom
fi

