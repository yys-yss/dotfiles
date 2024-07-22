# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/yousef/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
HISTFILE=~/.zsh_history
HISTSIZE=500000
SAVEHIST=500000
setopt appendhistory
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
export ZSH_AUTOSUGGEST_MANUAL_REBIND=true
alias cat='bat'
alias -g -- --help='--help 2>&1 | bat --language help --style plain'
source ~/.zsh/git.plugin.zsh
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export PATH="$PATH:/opt/nvim-linux64/bin"
export PATH="$PATH:$HOME/.local/bin"


nvim ()
{
  # if path is given, check whether the path is a directory or a file, if it is a directory, cd into the dir and open nvim, if it is a file, cd into the parent dir and open nvim
  if [ -z "$1" ]; then
    command nvim
  else
    if [ -d "$1" ]; then
      (cd "$1" && command nvim)
    else
      (cd "$(dirname "$1")" && command nvim "$(basename "$1")")
    fi
  fi
}

alias nvrc="nvim ~/.config/nvim"
alias zshrc="nvim ~/.zshrc"
alias reload='exec $SHELL -l'
alias v=nvim
alias vim=nvim
alias "cd"="z"
eval "$(zoxide init zsh)"
# batdiff() {
#     git diff --name-only --relative --diff-filter=d | xargs bat --diff
# }
alias gd="~/bat-extras/src/batdiff.sh"
# alias batdiff="~/bat-extras/src/batdiff.sh"
export PATH="/usr/local/bin:$PATH" >> ~/.zshrc
export BATDIFF_USE_DELTA=true
# alias gd='batdiff'
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
alias py="poetry run python"
