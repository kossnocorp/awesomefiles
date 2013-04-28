# Oh My Zsh path
export ZSH=$HOME/.oh-my-zsh

# Plugins
plugins=(git)

# Theme
export ZSH_THEME="oz"

# Start Oh My Zsh
source $ZSH/oh-my-zsh.sh

if [ -f `brew --prefix`/etc/autojump ]; then
  . `brew --prefix`/etc/autojump
fi

# Homebrew
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/sbin

# npm
export PATH=/usr/local/share/npm/bin:$PATH

# rbenv
#export PATH=$HOME/.rbenv/shims:$PATH
#export PATH=$HOME/.rbenv/bin:$PATH

# PostgreSQL
export PATH=$HOME/Dropbox/Applications/Postgres.app/Contents/MacOS/bin:$PATH
export PATH=/Applications/Postgres.app/Contents/MacOS/bin:$PATH
export PATH=~/Code/bin:$PATH
export PATH=/usr/local/share/python:$PATH

export TERM='xterm-256color'

alias c='pygmentize -O style=solarized -f console256 -g'

alias z='zeus'
alias zr='zeus rake'
alias zrdm='zeus rake db:migrate'
alias zc='zeus console'

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

if [ -f ~/.zsh_nocorrect ]; then
    while read -r COMMAND; do
        alias $COMMAND="nocorrect $COMMAND"
    done < ~/.zsh_nocorrect
fi

export EDITOR='vim'

[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

eval "$(/Users/koss/Code/topsub/bin/topsub init -)"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias t='topsub'
alias to='t open'
alias tp='t push'
alias tl='t pull'
alias tlp='tl && tp'
alias tpr='t pr'
alias tf='t fork'
alias tu='t upstream'

alias vim="stty stop '' -ixoff ; vim"

