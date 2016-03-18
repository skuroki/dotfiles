export EDITOR='vim'

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# lightline.vim
export TERM=xterm-256color

if [[ -s $HOME/.screeninator/scripts/screeninator ]] ; then source $HOME/.screeninator/scripts/screeninator ; fi

. $HOME/.bash_aliases

export PROMPT="%{$fg_bold[blue]%}${HOST} $PROMPT"
