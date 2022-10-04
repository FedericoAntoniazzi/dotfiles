# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export HISTFILE=~/.zsh_history
export HISTSIZE=1000
export SAVEHIST=10000

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
# Do not enter command lines into the history list if they are duplicatese of the previous event
setopt HIST_SAVE_NO_DUPS
# Ignore commands that start with space
setopt hist_ignore_space
# Share command history data
setopt share_history
# When HISTFILE size exceeds, delete duplicates first
setopt hist_expire_dups_first

# Directory stack
# Push the current directory visited on the stack.
setopt AUTO_PUSHD
# Do not store duplicates in the stack.
setopt PUSHD_IGNORE_DUPS
# Do not print the directory stack after pushd or popd.
setopt PUSHD_SILENT
alias d='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index

# Setup completion
zstyle :compistall filename "$HOME/.config/zsh/.zshrc"
autoload -U compinit; compinit
#_comp_options+=(globdots)

# Load Oh My ZSH
source $ZDOTDIR/.omz
# Load aliases
source $ZDOTDIR/.zshalias

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
