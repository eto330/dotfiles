autoload -U colors && colors
PS1="%{$fg[green]%}[%{$reset_color%} %{$fg[blue]%}%1~%{$reset_color%} %{$fg[green]%}]%{$reset_color%}$%b "



# Enable vi mode
bindkey -v
alias vim='nvim'
alias vi='nvim'
alias v='nvim'
alias ls='ls --color=auto' 
alias l='ls --color=auto -la'
alias ll='ls --color=auto -l'
alias la='ls --color=auto -la'
alias config='/usr/bin/git --git-dir=$HOME/dotfiles.git/ --work-tree=$HOME' 

alias tm='tmux'
function f() {
    local DIR
    DIR=$(find . -type d | fzf)
    cd "$DIR" || return 1
}


eval "$(starship init zsh)"
