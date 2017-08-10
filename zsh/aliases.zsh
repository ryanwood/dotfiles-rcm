alias reload="source ~/.zshrc"

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias start="vim ~/start.txt"

# Mac Helpers
alias show_hidden="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
alias hide_hidden="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"
alias pt='papertrail'

# Rails
alias devlog='tail -f log/development.log'
alias prodlog='tail -f log/production.log'
alias testlog='tail -f log/test.log'

# Rails aliases
alias rc='rails console'
alias rcs='rails console --sandbox'
alias rd='rails destroy'
alias rdb='rails dbconsole'
alias rg='rails generate'
alias rgm='rails generate migration'
alias rs='rails server'
alias rsd='rails server --debugger'
alias rsp='rails server --port'
alias rst='touch tmp/restart.txt'

# Rake aliases
alias rdm='rake db:migrate'
alias rdms='rake db:migrate:status'
alias rdmtc='rake db:migrate db:test:clone'
alias rdr='rake db:rollback'
alias rdtc='rake db:test:clone'
alias rdtp='rake db:test:prepare'
alias rdsl='rake db:schema:load'
alias rlc='rake log:clear'
alias rmd='rake middleware'
alias rn='rake notes'
alias rr='rake routes'
alias rrg='rake routes | grep'
alias rsts='rake stats'
alias rt='rake test'

# RSpec aliases
alias t="bundle exec rspec"
alias tff="bundle exec rspec --fail-fast"
alias tfo="bundle exec rspec --only-failures"

# Bundler
alias b="bundle"
alias be="b exec"
alias bl="b list"
alias bp="b package"
alias bo="b open"
alias bout="b outdated"
alias bu="b update"
alias bcn="b clean"
alias bi="b install --path vendor"
alias bil="bi --local"
alias binit="bi && b package && echo '\nvendor/ruby' >> .gitignore"

# Deployment

alias hrcp='heroku run console -r production'
alias hrcs='heroku run console -r staging'
alias ds='NO_CONFIRM=1 ./deploy staging'
alias dp='./deploy production'

# Git

# No arguments: `git status`
# With arguments: acts like `git`
g() {
  if [[ $# -gt 0 ]]; then
    git "$@"
  else
    git status -sb
  fi
}
# Pretty log messages
function _git_log_prettily(){
  if ! [ -z $1 ]; then
    git log --pretty=$1
  fi
}
# Warn if the current branch is a WIP
function work_in_progress() {
  if $(git log -n 1 2>/dev/null | grep -q -c "\-\-wip\-\-"); then
    echo "WIP!!"
  fi
}


alias d='git diff'
alias s='git status -sb'

alias ga='git add'
alias gaa='git add --all'
alias gau='git add --update'

alias gb='git branch'
alias gba='git branch -a'
alias gbda='git branch --no-color --merged | command grep -vE "^(\*|\s*(master|develop|dev)\s*$)" | command xargs -n 1 git branch -d'
alias gbl='git blame -b -w'
alias gbnm='git branch --no-merged'
alias gbr='git branch --remote'
alias gbs='git bisect'
alias gbsb='git bisect bad'
alias gbsg='git bisect good'
alias gbsr='git bisect reset'
alias gbss='git bisect start'
alias gbx='git branch -d'
alias gbX='git branch -D'

alias gc='git commit -v'
alias gc!='git commit -v --amend'
alias gcn!='git commit -v --no-edit --amend'
alias gca='git commit -v -a'
alias gca!='git commit -v -a --amend'
alias gcan!='git commit -v -a --no-edit --amend'
alias gcans!='git commit -v -a -s --no-edit --amend'
alias gcam='git commit -a -m'
alias gcsm='git commit -s -m'
alias gcb='git checkout -b'
alias gcf='git config --list'
alias gcl='git clone --recursive'
alias gcln='git clean -fd'
alias gpristine='git reset --hard && git clean -dfx'
alias gcm='git checkout master'

alias gcmsg='git commit -m'
alias gco='git checkout'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gcpa='git cherry-pick --abort'
alias gcpc='git cherry-pick --continue'
alias gcs='git commit -S'

alias gd='git diff'
alias gdca='git diff --cached'
alias gdct='git describe --tags `git rev-list --tags --max-count=1`'
alias gdt='git diff-tree --no-commit-id --name-only -r'
alias gdw='git diff --word-diff'

alias gf='git fetch'
alias gfa='git fetch --all --prune'
alias gfo='git fetch origin --prune'

alias gl='glol'
alias glg='git log --stat'
alias glgp='git log --stat -p'
alias glgg='git log --graph'
alias glgga='git log --graph --decorate --all'
alias glgm='git log --graph --max-count=10'
alias glo='git log --oneline --decorate'
alias glol="git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glola="git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"
alias glog='git log --oneline --decorate --graph'
alias gloga='git log --oneline --decorate --graph --all'
alias glp="_git_log_prettily"

alias gm='git merge --no-ff'
alias gmf='git merge --ff-only'

alias gp='git push'
alias gpd='git push --dry-run'

alias gr='git reset'
alias gra='git remote add'
alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbi='git rebase -i'
alias grbm='git rebase master'
alias grbs='git rebase --skip'
alias grh='git reset --hard'
alias grmv='git remote rename'
alias grrm='git remote remove'
alias grs='git reset --soft'
alias grset='git remote set-url'

alias gs='git status -sb'
alias gsi='git submodule init'
alias gst='git stash'
alias gsta='git stash apply'
alias gstc='git stash clear'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gsts='git stash save'
alias gstst='git stash show --text'
alias gstp='git stash pop'
alias gsu='git submodule update'

alias gunignore='git update-index --no-assume-unchanged'
alias gunwip='git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1'
alias gup='git smart-pull'
alias glum='git pull upstream master'

alias gwch='git whatchanged -p --abbrev-commit --pretty=medium'
alias gwip='git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify -m "--wip-- [skip ci]"'
