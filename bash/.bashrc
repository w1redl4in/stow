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
alias vim='nvim'
alias v='nvim'
alias bnone='BROWSER=none'
alias service='sudo systemctl'
alias y='yarn'
alias yw='yarn workspace'
alias lg='lazygit'
alias open='xdg-open'
alias ll='ls -l --color=auto'
alias la='ls -la --color=auto'
alias dps='docker ps -a --format="table {{.ID}}\t{{.Names}}\t{{.Image}}\t{{.Command}}\t{{.Status}}"'

# Autocomplete on tab
bind "TAB:menu-complete"
bind "set show-all-if-ambiguous on"
