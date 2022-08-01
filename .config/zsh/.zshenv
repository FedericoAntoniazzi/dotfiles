export ZDOTDIR=~/.config/zsh
# Set Oh-My-Zsh folder
export ZSH=~/.config/omz
export ZSH_THEME="powerlevel10k/powerlevel10k"

# GPG
export GPG_TTY=$(tty)

# XDG Dirs
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# SSH auth sock for unlocking ssh keys only when keepassxc db is unlocked
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# Editor
export EDITOR="vim"
export VISUAL="vim"

# Fix Java applications
export _JAVA_AWT_WM_NONREPARENTING=1

# Set Qt to use the wayland backend
export QT_QPA_PLATFORM=wayland

# Add paths to PATH
typeset -U PATH path
path=("$path[@]" "/usr/share/bcc/tools")
export PATH
