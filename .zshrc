# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

ZSH_THEME="af-magic"

plugins=(asdf)

#add code to path
# code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
source "$HOME/.oh-my-zsh/oh-my-zsh.sh"

# custom bins
export PATH=$PATH:/Users/laurenceolsensmith/.local/share/bin

export EDITOR='vim'

# fzf replace reverse search etc
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# direnv
# eval "$(direnv hook zsh)"

# asdf for oh my zsh
. $HOME/.asdf/asdf.sh


# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)

# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit

# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)

# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit

#system
export EDITOR="/usr/bin/vim"
alias reload="source ~/.zshrc"

#ruby, rails, rbenv, rack
## source "/etc/profile.d/rvm.sh"
alias be='bundle exec'

# kubectl
alias k="kubectl"

#direnv
eval "$(direnv hook zsh)"

#autocomplete on kubectl
# complete -F __start_kubectl k

# general
alias l="ls -lah"
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias tmuxrc="vim ~/.tmux.conf"
alias reload="source ~/.zshrc"
alias tmuxrs="vim ~/.config/tmuxinator/tf.yml"
alias switch_kb_qwerty="rm ~/.vimrc; ln -s ~/configs/.vimrc_qwerty  ~/.vimrc; rm ~/.tmux.conf; ln -s ~/configs/.tmux.conf_qwerty  ~/.tmux.conf; "
alias switch_kb_cole="rm ~/.vimrc; ln -s ~/configs/.vimrc_colemak ~/.vimrc; rm ~/.tmux.conf; ln -s ~/configs/.tmux.conf_colemak ~/.tmux.conf "
alias arst="asdf"
alias xopen="xdg-open"
alias pbcopy="xclip -sel clip"

# kubectl
alias kgp="kubectl get pods"
alias kgpw="watch -t -n1 kubectl get pods"
alias kl="kubectl logs -f"
alias kgi="kubectl get ingresses"
alias kgs="kubectl get services"
alias kcuc="kubectl config use-context"
alias kcsc="kubectl config set-context --current"
alias kcv="kubectl config view"
alias kxc="kubectl exec -it"
alias kd="kubectl describe"
alias kcn="kubectl get namespace"
alias kpfss="kubectl port-forward -n secret-store secret-store-vault-0 8200:8200"

#docker
alias com="docker-compose"
alias doc="docker"
alias docstop="doc stop $(doc ps -aq)"
alias cud="com up -d"
alias cuf="com up -d; com logs -f"
alias cdcu="com down;com up -d;"
alias cdcuf="com down;com up -d; com logs -f"
alias doc_networks="docker inspect -f '{{range $key, $value := .NetworkSettings.Networks}}{{$key}} {{end}}'"
alias doc_containers="docker network inspect -f '{{range .Containers}}{{.Name}} {{end}}'"

#dirs
alias cdoc="cd ~/Documents"
alias cdown="cd ~/Downloads"
alias cdoc="cd ~/Documents"

#git
alias gd="git diff"
alias gc="git commit -m"
alias gl="git log"
alias gst="git status"
alias gau="git add --update"
alias gcam="git commit -am"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gp="git push"
alias grc="git rebase --continue"


