export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# Editor
export EDITOR="nvim"
export VISUAL="nvim"

# Rust
export PATH="$PATH:$HOME/.cargo/bin"
# Golang
export GO111MODULE="on"
export GOPATH="$HOME/dev/go"
export GOBIN="$GOPATH/bin"

# Path
path+=("$GOBIN")
path+=("$HOME/.config/dotscripts")
export PATH

