# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias vim='flatpak run io.neovim.nvim'
alias v='flatpak run io.neovim.nvim'
alias bnone='BROWSER=none'
alias service='sudo systemctl'
alias y='yarn'
alias yw='yarn workspace'
alias lg='lazygit'
alias open='xdg-open'
