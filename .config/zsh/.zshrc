HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000000

# cd can be omitted for changing directory
setopt autocd
# Allow extended glob for matching files
setopt extendedglob
# Sort files numerically
setopt numericglobsort
# Do not beep
setopt nobeep
# Always append history
setopt histappend

# Use vim keybindings
bindkey -v

# Setup completion
zstyle :compistall filename "$HOME/.config/zsh/.zshrc"
autoload -Uz compinit
compinit

# Mappings
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line
bindkey "^B" backward-word
bindkey "^F" forward-word

# Load aliases
source $ZDOTDIR/.zshalias
