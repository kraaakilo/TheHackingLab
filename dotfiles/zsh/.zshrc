export ZSH="$HOME/.oh-my-zsh"
export FPATH="~/apps/cli/completions/zsh:$FPATH"

# ZSH plugins
plugins=(
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Custom configuration
if [ -f ~/.triplea.zsh ]; then
    source ~/.triplea.zsh
fi

# Fuzzy search history
source <(fzf --zsh)
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Zoxide
eval "$(zoxide init zsh)"

# StarShip.rs
eval "$(starship init zsh)"
