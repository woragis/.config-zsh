# Aliases
alias ls='ls --color=auto'
alias ll='ls -lah --group-directories-first'
alias la='ls -A'
alias grep='grep --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias g='git'
alias gs='git status -sb'
alias gd='git diff'
alias gl='git log --oneline -20'

if (( $+commands[bat] )); then
  alias cat='bat --paging=never'
fi
if (( $+commands[eza] )); then
  alias ls='eza --icons --group-directories-first'
  alias ll='eza -lah --icons --group-directories-first'
fi
