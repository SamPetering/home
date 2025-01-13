DEFAULT_USER="samuelpetering"

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
# delete git branch (including remote branches)
# source: https://www.peterp.me/articles/cli-tips-interactive-branch-delete/
git_branch_delete_interactive() {
 local branches branch
 branches=$(git for-each-ref --count=30 --sort=-committerdate refs/heads/ --format="%(refname:short)") && branch=$(echo "$branches" | fzf --multi ) && git branch -D $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}
alias gbdi="git_branch_delete_interactive"
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
alias inv="nvim \$(fzf --preview='bat --color=always {}')"

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

# fzf
# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)


[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Created by `pipx` on 2024-05-06 21:53:12
export PATH="$PATH:/Users/samuelpetering/.local/bin"
