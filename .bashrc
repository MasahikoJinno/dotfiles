#NPM_PACKAGES="${HOME}/.npm-packages"
#NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
#PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath`
# command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/masahiko/.sdkman"
[[ -s "/Users/masahiko/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/masahiko/.sdkman/bin/sdkman-init.sh"

# export PATH=/usr/local/var/nodebrew/current/bin:$PATH
# export PATH=$HOME/.nodebrew/current/bin:$PATH
# export NODEBREW_ROOT=/usr/local/var/nodebrew
# export PATH=/home/${USER}/anaconda/bin:$PATH
