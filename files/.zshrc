export EDITOR='vim'

# lightline.vim
export TERM=xterm-256color

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
eval "$(nodenv init -)"

# byobuのwindowを0はじまりにするために必要
if [[ -n $TMUX ]] ; then
  tmux movew -r ;
fi

source ~/.zprezto/init.zsh

alias an='ag --noheading'
alias b='bundle'
alias be='bundle exec'
alias bs='byobu  -S `pwd | sed -e "s/\//_/g"`' # ディレクトリのパスを元にスクリーン名をつけて別に開く
alias by='byobu'
alias d='docker'
alias dc='docker-compose'
alias exut='exit'
alias g='git'
alias gcm='git checkout master'
alias gdf='git df'
alias gds='git ds'
alias gf='git fetch'
alias gg='git grep -n'
alias gmt='git mergetool'
alias gl='GIT_PAGER=less git lg'
alias grprs='t=`git describe --abbrev=0 --tags`;echo "Since $t:";echo;git log $t..origin/master --merges|grep "^    .\+"|grep -v Merge|sed -e"s/    //g"'
alias gst='git status'
alias k='kubectl'
alias kc='kubectl create -f'
alias kd='kubectl describe'
alias ke='kubectl exec'
alias kdel='kubectl delete -f'
alias kg='kubectl get'
alias kl='kubectl logs'
alias kr='kubectl run'
alias ll='ls -al'
alias j='jasmine-headless-webkit'
alias r='bundle exec rails'
alias rmorig='find .|grep \\.orig|xargs rm'
alias rr='bundle exec rails routes'
alias rs='bundle exec rails spec'
alias rsc='bundle exec rails spec:controllers'
alias rsm='bundle exec rails spec:models'
alias rsr='bundle exec rails db:create && rake db:migrate && rake spec'
alias rsv='bundle exec rails spec:views'
alias t='bundle exec rails test'

function peco-select-history() {
	local tac
	if which tac > /dev/null; then
		tac="tac"
	else
		tac="tail -r"
	fi
	BUFFER=$(\history -n 1 | \
		eval $tac | \
		peco --query "$LBUFFER")
	CURSOR=$#BUFFER
	zle clear-screen
}
zle -N peco-select-history
bindkey '^r' peco-select-history
