export ZDOTDIR=~/.config/zsh

# Set QT theme
export QT_QPA_PLATFORMTHEME="qt5ct"  
export QT_STYLE_OVERRIDE="kvantum"

# SSH Auth sock for unlocking ssh keys only when keepassxc db is unlocked
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# Editor
export EDITOR="nvim"
export VISUAL="kitty nvim"

# Docker
export DOCKER_BUILDKIT=1
export COMPOSE_DOCKER_CLI_BUILD=1

# Dotnet
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# Golang
export GOPATH="$HOME/dev/go"
export GOBIN="$GOPATH/bin"

# Required for runnning JetBrains' IDEs
export _JAVA_AWT_WM_NONREPARENTING=1

# Export PATH
typeset -U PATH path
path=("$path[@]" "$GOBIN" "$HOME/.cargo/bin")
export PATH
