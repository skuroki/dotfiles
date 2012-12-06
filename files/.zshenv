export EDITOR='vim'

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

if [[ -s $HOME/.screeninator/scripts/screeninator ]] ; then source $HOME/.screeninator/scripts/screeninator ; fi

. $HOME/.bash_aliases
