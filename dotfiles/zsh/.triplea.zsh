# Description: This file contains my custom aliases and functions
# Author: TripleA

# PATH Variables | Start
export PATH=$PATH:$HOME/.config/composer/vendor/bin
export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:/opt/nvim-linux64/bin
# PATH Variables | End

EDITOR=nvim

# Aliases | Start
alias v='nvim'
alias pbcopy='xsel --input --clipboard'
alias pbpaste='xsel --output --clipboard'
alias sfs='find . -path './.git' -prune -o -path './vendor' -prune -o -path './node_modules' -prune -o -type f -print | fzf'
alias efs='file=$(sfs) && [ -n "$file" ] && nvim "$file"'
alias off='shutdown -h now'
alias reb='systemctl reboot'
alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'
alias cdo='cd /vagrant/dotfiles; clear; tput setaf 2; echo -e "\033[1;32mHello Mr TripleA;\033[0m \033[1;34mWelcome to your \033[1;37mDotfiles\033[1;34m!\033[0m"; tput sgr0'
alias phpd='php -S localhost:7000 -ddisplay_errors=1 -dzend_extension=xdebug.so -dxdebug.remote_enable=1'
alias pfn='ping ping-eu.ds.on.epicgames.com'
alias ls='eza -al --group-directories-first --icons --git'
alias pysrv='python3 -m http.server'
alias y='ranger'
alias cd='z'

# Aliases | End

# Custom functions | Start
# Extract various archive formats
extract() {
    if [ -f "$1" ]; then
        case "$1" in
            *.tar.bz2) tar xjf "$1" ;;
            *.tar.gz) tar xzf "$1" ;;
            *.bz2) bunzip2 "$1" ;;
            *.rar) unrar e "$1" ;;
            *.gz) gunzip "$1" ;;
            *.tar) tar xf "$1" ;;
            *.tbz2) tar xjf "$1" ;;
            *.tgz) tar xzf "$1" ;;
            *.zip) unzip "$1" ;;
            *.Z) uncompress "$1" ;;
            *.7z) 7z x "$1" ;;
            *) echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

# Create a new directory and enter it
mcd() {
    mkdir -p "$1" && cd "$1"
}

# Count uniq entries from file
cnu() {
  if [ -f "$1" ]; then
    echo "Results : " $(cat $1 | sort | uniq | wc -l)
  else
    echo "'$1' is not a valid file"
  fi
}

# Display disk usage for all directories in the current path
dus() {
    du -sh * | sort -h
}

# Copy file content to clipboard
fcopy() {
    if [ -f "$1" ]; then
        cat $1 | pbcopy
    fi
}

blackhat() {
  local email=$1
  grep "$email" ~/workspace/wlfr.credentials.txt 2> /dev/null | awk -F ":" '{print $2 ":" $3}'
}
# Backup a file with a timestamp
backup() {
    if [ -f "$1" ]; then
        cp "$1" "$1.bak.$(date +%F_%T)"
    else
        echo "File '$1' does not exist."
    fi
}

# Watch a directory for changes
watchdir() {
    if [ $# -ne 1 ]; then
        echo "Usage: watchdir <directory>"
        return 1
    fi
    while inotifywait -r -e modify,create,delete "$1"; do
        echo "Change detected in $1 at $(date)"
    done
}

# Custom functions | End

# PNPM | Start
export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# PNPM | End

bindkey -s ^k "efs\n"
