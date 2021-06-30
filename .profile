export QT_QPA_PLATFORMTHEME="qt5ct"  
export QT_STYLE_OVERRIDE="kvantum"

#export LIBVA_DRIVER_NAME="i965"
#export VDPAU_DRIVER=va_gl

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

# Path
PATH="$PATH:$GOBIN"
PATH="$PATH:$HOME/.config/dotscripts"
PATH="$PATH:$HOME/.cargo/bin"
PATH="$PATH:$HOME/.local/share/jetbrains/"
export PATH

