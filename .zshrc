# zsh — core options & completion
autoload -Uz compinit
compinit -d "${XDG_CACHE_HOME:-$HOME/.cache}/zsh/zcompdump"

setopt AUTO_CD AUTO_PUSHD PUSHD_IGNORE_DUPS INTERACTIVE_COMMENTS EXTENDED_GLOB NO_BEEP

HISTFILE="${XDG_STATE_HOME:-$HOME/.local/state}/zsh/history"
HISTSIZE=50000
SAVEHIST=50000
setopt SHARE_HISTORY HIST_IGNORE_ALL_DUPS HIST_IGNORE_SPACE HIST_REDUCE_BLANKS HIST_VERIFY EXTENDED_HISTORY
mkdir -p "${HISTFILE:h}" "${XDG_CACHE_HOME:-$HOME/.cache}/zsh"

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' rehash true
fpath=(/usr/share/zsh/site-functions $fpath)

[[ -r "$ZDOTDIR/aliases.zsh" ]] && source "$ZDOTDIR/aliases.zsh"
