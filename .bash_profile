alias ll='ls -la'
alias sshaws='ssh -i key/aws/MyEc2.pem ec2-user@ec2-13-113-2-84.ap-northeast-1.compute.amazonaws.com'
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

GIT_PS1_SHOWDIRTYSTATE=true
BLUE="\[\e[1;34m\]"
RED="\[\e[1;31m\]"
GREEN="\[\e[1;32m\]"
WHITE="\[\e[1;00m\]"
GRAY="\[\e[0;37m\]"
BASE="[\D{%Y-%m-%d} \t] \H"
GIT="\$(__git_ps1 [%s])"

export PS1="${BLUE}${BASE}:${GREEN}\w ${RED}${GIT}${GRAY}\n> "
export PATH=/usr/local/var/nodebrew/current/bin:$PATH
export PATH=$HOME/.nodebrew/current/bin:$PATH
export NODEBREW_ROOT=/usr/local/var/nodebrew
export PATH=/home/${USER}/anaconda/bin:$PATH

eval "$(pyenv init -)"

#export PYENV_ROOT=${HOME}/.pyenv
#if [ -d "${PYENV_ROOT}" ]; then
#    export PATH=${PYENV_ROOT}/bin:$PATH
#    eval "$(pyenv init -)"
#    eval "$(pyenv virtualenv-init -)"
#fi
