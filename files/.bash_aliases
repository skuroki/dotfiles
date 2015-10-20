alias b='bundle'
alias be='bundle exec'
alias exut='exit'
alias g='git'
alias gcm='git checkout master'
alias gdf='git df'
alias gds='git ds'
alias gf='git fetch'
alias gg='git grep -n'
alias gmt='git mergetool'
alias gl='git lg'
alias grprs='t=`git describe --abbrev=0 --tags`;echo "Since $t:";echo;git log $t..origin/master --merges|grep "^    .\+"|grep -v Merge|sed -e"s/    //g"'
alias gst='git status'
alias ll='ls -al'
alias j='jasmine-headless-webkit'
alias r='bundle exec rails'
alias rk='bundle exec rake'
alias rmorig='find .|grep \\.orig|xargs rm'
alias rs='bundle exec rake spec'
alias rsc='bundle exec rake spec:controllers'
alias rsm='bundle exec rake spec:models'
alias rsr='bundle exec rake db:create && rake db:migrate && rake spec'
alias rsv='bundle exec rake spec:views'
