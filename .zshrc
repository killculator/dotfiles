# aliases
alias grep='grep --color=auto'
alias ls='ls -G'
alias vi='vim'
alias brewski='brew update; brew upgrade; brew cask upgrade'
alias py='python3'
alias python='py'

# environment variables
export EDITOR='/bin/ed'
export PATH="${HOME}/bin:${PATH}"
export VISUAL='/usr/bin/vim'
export JAVA_HOME=$(/usr/libexec/java_home)
export M2_HOME=/usr/local/Cellar/maven/3.5.4/libexec
export PATH=$PATH:$M2_HOME/bin
export ZSH="/Users/alex/.oh-my-zsh"

# zsh
ZSH_THEME="killculator"
DISABLE_UPDATE_PROMPT="true"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"

source $ZSH/oh-my-zsh.sh