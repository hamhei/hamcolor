export CLICOLOR='true'
export LSCOLORS=''"gxfxcxdxbxegedabagacad"
alias ging='ping google.com'
alias groute='traceroute google.com'
alias o='open'
alias cl='clear'

alias sl="ls"
alias lls="ls"
alias lss="ls"
alias l="ls"
alias ll="ls -l"
alias lll="ll"
alias llll="ll"
alias la="ls -a"
alias lsa="ls -a"
alias lla="ls -la"
alias lld="ls -ld"
alias lsd="ls -d"

alias vi="vim"
alias vii="vi"
alias vu="vi"
alias viu="vi"
alias vui="vi"
alias vl="vi"

alias mdkir="mkdir"
alias rdmir="rmdir"

alias viemacs="vi $HOME/.emacs.el"
alias vibash="vi $HOME/.bashrc"
alias vivim="vi $HOME/.vimrc"
alias viscreen="vi $HOME/.screenrc"
alias vigit="vi $HOME/.gitconfig"

alias emacsemacs="emacs $HOME/.emacs.el"
alias emacsbash="emacs $HOME/.bashrc"
alias emacsvim="emacs $HOME/.vimrc"
alias emacsscreen="emacs $HOME/.screenrc"
alias emacsgit="emacs $HOME/.gitconfig"

export PATH=$PATH:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin
export PATH=$PATH:/Applications/android-sdk-mac_x86/tools
alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs -nw' #use Carbon-Emacs for mac
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # Load RVM into a shell session *as a function*
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
export PS1="\[\033[037;0;32m\]\e[04m[\t]\u@\W(\!)$\e[00m \[\033[0m\]"
eval 'ssh-add ~/.ssh/id_rsa'
eval 'ssh-agent'
