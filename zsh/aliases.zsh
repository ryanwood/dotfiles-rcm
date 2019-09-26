alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# For use with hub: https://hub.github.com/
# alias git=hub

alias b="bundle"
alias bcn="b clean"
alias be="b exec"
alias bi="b install --path vendor"
alias bil="bi --local"
alias binit="bi && b package && echo '\nvendor/ruby' >> .gitignore"
alias bl="b list"
alias bo="b open"
alias bout="b outdated"
alias bp="b package"
alias bu="b update"

alias d='git diff'
alias devlog='tail -f log/development.log'
alias ds='NO_CONFIRM=1 ./deploy staging'
alias dp='./deploy production'

alias ga='git add'
alias gaa='git add --all'
alias gau='git add --update'

alias gb='git branch'
# alias gba='git branch -a'
# alias gbda='git branch --no-color --merged | command grep -vE "^(\*|\s*(master|develop|dev)\s*$)" | command xargs -n 1 git branch -d'
# alias gbl='git blame -b -w'
# alias gbnm='git branch --no-merged'
# alias gbr='git branch --remote'
# alias gbs='git bisect'
# alias gbsb='git bisect bad'
# alias gbsg='git bisect good'
# alias gbsr='git bisect reset'
# alias gbss='git bisect start'
alias gbx='git branch -d'
alias gbX='git branch -D'

alias gc='git commit -v'
alias gc!='git commit -v --amend'
alias gca='git commit -v -a'
alias gca!='git commit -v -a --amend'
alias gcam='git commit -a -m'
alias gcmsg='git commit -m'
alias gcan!='git commit -v -a --no-edit --amend'
alias gcans!='git commit -v -a -s --no-edit --amend'
alias gcb='git checkout -b'
alias gcf='git config --list'
alias gcl='git clone --recursive'
alias gcln='git clean -fd'
alias gcm='git checkout master'
alias gcn!='git commit -v --no-edit --amend'
alias gco='git checkout'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gcpa='git cherry-pick --abort'
alias gcpc='git cherry-pick --continue'
alias gcs='git commit -S'
alias gcsm='git commit -s -m'

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
alias glgg='git log --graph'
alias glgga='git log --graph --decorate --all'
alias glgm='git log --graph --max-count=10'
alias glgp='git log --stat -p'
alias glo='git log --oneline --decorate'
alias glol="git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glola="git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"
alias glog='git log --oneline --decorate --graph'
alias gloga='git log --oneline --decorate --graph --all'
alias glp="_git_log_prettily"
alias glum='git pull upstream master'

alias gm='git merge --no-ff'
alias gmf='git merge --ff-only'

alias gp='git push'
alias gpd='git push --dry-run'
alias gpristine='git reset --hard && git clean -dfx'
alias gpu='git push -u'

alias gr='git reset'
alias gra='git remote add'
alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbi='git rebase -i'
alias grbm='git rebase master'
alias grbs='git rebase --skip'
alias grh='git reset --hard'
alias grhc='git reset --hard && git clean -fd'
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

alias gwch='git whatchanged -p --abbrev-commit --pretty=medium'
alias gwip='git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify -m "--wip-- [skip ci]"'

alias hide_hidden="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"
alias hlp='heroku logs -r production'
alias hls='heroku logs -r staging'
alias hltp='heroku logs -t -r production'
alias hlts='heroku logs -t -r staging'
alias hrcp='heroku run console -r production'
alias hrcs='heroku run console -r staging'

alias prodlog='tail -f log/production.log'
alias pt='papertrail'

alias rc='rails console'
alias rcs='rails console --sandbox'
alias rd='rails destroy'
alias rdb='rails dbconsole'
alias rdm='rails db:migrate'
alias rdms='rails db:migrate:status'
alias rdmtc='rails db:migrate db:test:clone'
alias rdr='rails db:rollback'
alias rdtc='rails db:test:clone'
alias rdsl='rails db:schema:load'
alias rdtp='rails db:test:prepare'
alias reload="source ~/.zshrc"
alias rgg='rails generate'
alias rgm='rails generate migration'
alias rs='rails server'
alias rsd='rails server --debugger'
alias rsp='rails server --port'
alias rst='touch tmp/restart.txt'
alias rlc='rails log:clear'
alias rmd='rails middleware'
alias rn='rails notes'
alias rr='rails routes'
alias rrg='rails routes | grep'
alias rsts='rails stats'
alias rt='rails test'

alias s='git status -sb'
alias show_hidden="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
alias start="vim ~/start.txt"

alias t="rspec"
alias ta="trc && t && tsl"
alias tb="bundle exec rspec"
alias testlog='tail -f log/test.log'
alias tff="rspec --fail-fast"
alias tfo="rspec --only-failures"
alias tma="tmux a -t "
alias tmb="tmux a -t billing"
alias tmd="tmux a -t deerlab"
alias tml="tmux a -t luna"
alias tmm="tmux a -t moonclerk"
alias trc="bundle exec rubocop"
alias tsl="bundle exec slim-lint app/**/*.slim"
alias twos="rspec --exclude-pattern 'spec/system/**/*_spec.rb'"
alias twoj="rspec --tags ~js spec/"

alias vim="nvim"
alias vimdiff="nvim -d"


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
