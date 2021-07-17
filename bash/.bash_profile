# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

# Install NPM packages globally without root
export NPM_CONFIG_PREFIX=$HOME/.local/share/npm
export PATH=$PATH:$HOME/.local/share/npm/bin

# De-clutering of home folder initiative
export GNUPGHOME=$HOME/.local/share/gnupg
export NPM_CONFIG_CACHE=$HOME/.cache/npm
