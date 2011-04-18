export CLICOLOR='true'
export LSCOLORS=''"gxfxcxdxbxegedabagacad"
alias ging='ping google.com'
alias groute='traceroute google.com'
alias o='open'
alias lsa='ls -alf'
alias gita='git add'
alias gitc='git commit'
alias gitb='git branch'
alias gitco='git checkout'
export PATH=/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin: #/usr/X11/bin
#alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs' #use Carbon-Emacs for mac
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # Load RVM into a shell session *as a function*
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
export PS1="\[\033[037;0;32m\]\e[04m[\t]\u@\W(\!)$\e[00m \[\033[0m\]"
