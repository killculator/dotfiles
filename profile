PATH="${HOME}/bin:/usr/local/bin/mongod:${PATH}"

export EDITOR='nvim'
export HISTFILE="${HOME}/.sh_history"

alias brewski='brew update; brew upgrade; brew cask upgrade; brew cleanup -s'
alias ls='ls -lAFGh'
alias vi="${EDITOR}"

set -o emacs

PS1='$(echo "${PWD##*/}") $(echo -e "\e[1;37m")❯$(echo -e "\e[0m") '
