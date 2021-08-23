# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# cd without using cd
setopt autocd
# Allow using regex with *
setopt extendedglob
# Sort filenames numerically
setopt numericglobsort
# Do not beep
setopt nobeep
# Remove newer commands if duplicates
# setopt histignorealldups

# Load aliases
source $ZDOTDIR/.zshalias
# Initialize oh-my-zsh related things
source $ZDOTDIR/.ohmyzsh
# Load custom functions
source $ZDOTDIR/custom-functions.sh

# Setup completion
zstyle :compinstall filename "$HOME/.config/zsh/.zshrc"
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
# setopt COMPLETE_ALIASES

# Set vim keybindings
bindkey -v

# Map Ctrl=a to move at the begging of line
bindkey "^A" beginning-of-line
# Map Ctrl=e to move at the end of line
bindkey "^E" end-of-line
# Map Ctrl=b to move to the previous word
bindkey "^B" backward-word
# Map Ctrl=f to move to the next word
bindkey "^F" forward-word

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
