export QT_QPA_PLATFORMTHEME="qt5ct"  
export QT_STYLE_OVERRIDE="kvantum"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# Editor
export EDITOR="nvim"
export VISUAL="nvim"

# Golang
export GO111MODULE="on"
export GOPATH="$HOME/dev/go"
export GOBIN="$GOPATH/bin"

# Path
PATH="$PATH:$GOBIN"
PATH="$PATH:$HOME/.config/dotscripts"
PATH="$PATH:$HOME/.cargo/bin"
export PATH

