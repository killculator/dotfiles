#
# ~/.profile
#

. ~/.zshrc

export CHARSET='UTF-8'
export ENV="${HOME}/.profile"
export HISTFILE="${HOME}/.zsh_history"
export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'
export PATH="${HOME}/bin:${PATH}"
export PATH=`pwd`/depot_tools:"$PATH"