export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Path to your oh-my-zsh installation.
export ZSH="/Users/samuelpetering/.oh-my-zsh"
# ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

plugins=(git golang aliases)
source $ZSH/oh-my-zsh.sh

# User configuration
alias zc="vim ~/.zshrc"
alias t="cd ~/toolbox/"
alias ts="date +%s"
alias rf=". ~/.zshrc"
alias hl="history | less"
alias hs="history | rg"
alias hsi="history | rg -i"

# tmux
alias tc="vim ~/.tmux.conf"
alias rft="tmux source-file ~/.tmux.conf"
alias tsave="tmux-session save"
alias trestore="tmux-session restore && tmux attach"

# vim
alias cdv="cd ~/.config/nvim"
alias vc="vim ~/.config/nvim"
alias vim="nvim"
alias v.="nvim ."

#ghostty
alias gc="vim $HOME/.config/ghostty/config"

# homebrew
export PATH=/opt/homebrew/bin:$PATH

# Python
export PATH=/usr/bin/python3:$PATH
eval "$(pyenv init -)"

# pnpm
export PNPM_HOME="/Users/samuelpetering/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac


[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Created by `pipx` on 2024-05-06 21:53:12
export PATH="$PATH:/Users/samuelpetering/.local/bin"
