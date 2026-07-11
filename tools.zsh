# fzf + zoxide

export FZF_DEFAULT_OPTS="
  --height=40% --layout=reverse --border
  --color=bg+:#292e42,bg:#24283b,spinner:#bb9af7,hl:#7aa2f7
  --color=fg:#c0caf5,header:#7aa2f7,info:#7dcfff,pointer:#bb9af7
  --color=marker:#9ece6a,fg+:#c0caf5,prompt:#7aa2f7,hl+:#7dcfff
"

[[ -r /usr/share/fzf/key-bindings.zsh ]] && source /usr/share/fzf/key-bindings.zsh
[[ -r /usr/share/fzf/completion.zsh ]] && source /usr/share/fzf/completion.zsh

# Ctrl-T files, Ctrl-R history, Alt-C cd — from fzf key-bindings

if (( $+commands[zoxide] )); then
  eval "$(zoxide init zsh)"
fi
