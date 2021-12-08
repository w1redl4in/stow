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
export RUST_HOME=$HOME/.cache/rustup
export CARGO_HOME=$HOME/.cache/cargo
export GRADLE_USER_HOME=$HOME/.cache/gradle

# Python configuration
export PYTHONSTARTUP=$HOME/.pythonrc

# Flatpak configuration
export FLATPAK_ENABLE_SDK_EXT=node14

# Android development configuration
export ANDROID_HOME=$HOME/.var/app/com.google.AndroidStudio/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Volta configuration
export VOLTA_HOME=$HOME/.volta

# PATH configuration
export PATH=$PATH:$VOLTA_HOME/bin:$HOME/bin

# Editor configuration
export VISUAL=nvim
export EDITOR=$VISUAL
