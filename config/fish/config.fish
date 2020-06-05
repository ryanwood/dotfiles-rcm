
if status --is-interactive
  # rbenv
  rbenv init - | source

  function l
    ls -la $argv
  end

  alias .. 'cd ..'
  alias ... 'cd ../..'
  alias .... 'cd ../../..'
  alias ..... 'cd ../../../..'

  abbr -a -g b 'bundle'
  abbr -a -g bx 'bundle exec'

  abbr -a -g d 'git diff'
  abbr -a -g devlog 'tail -f log/development.log'
  abbr -a -g ds 'NO_CONFIRM=1 ./deploy staging'
  abbr -a -g dp './deploy production'

  abbr -a -g g 'git'
  abbr -a -g ga 'git add'
  abbr -a -g gaa 'git add --all'
  abbr -a -g gau 'git add --update'
  abbr -a -g gb 'git branch'
  abbr -a -g gbl 'git blame'
  abbr -a -g gbx 'git branch -d'
  abbr -a -g gbX 'git branch -D'

  abbr -a -g gc 'git commit -v'
  abbr -a -g gc! 'git commit -v --amend'
  abbr -a -g gca 'git commit -v -a'
  abbr -a -g gca! 'git commit -v -a --amend'
  abbr -a -g gcam 'git commit -a -m'
  abbr -a -g gcmsg 'git commit -m'
  abbr -a -g gcan! 'git commit -v -a --no-edit --amend'
  abbr -a -g gcans! 'git commit -v -a -s --no-edit --amend'
  abbr -a -g gcb 'git checkout -b'
  abbr -a -g gcf 'git config --list'
  abbr -a -g gcl 'git clone --recursive'
  abbr -a -g gcln 'git clean -fd'
  abbr -a -g gcn! 'git commit -v --no-edit --amend'
  abbr -a -g gco 'git checkout'
  abbr -a -g gcp 'git cherry-pick'
  abbr -a -g gcpa 'git cherry-pick --abort'
  abbr -a -g gcpc 'git cherry-pick --continue'
  abbr -a -g gcs 'git commit -S'
  abbr -a -g gcsm 'git commit -s -m'

  abbr -a -g gd 'git diff'
  abbr -a -g gdca 'git diff --cached'
  abbr -a -g gdct 'git describe --tags `git rev-list --tags --max-count=1`'
  abbr -a -g gdt 'git diff-tree --no-commit-id --name-only -r'
  abbr -a -g gdw 'git diff --word-diff'

  abbr -a -g gf 'git fetch'
  abbr -a -g gfa 'git fetch --all --prune'
  abbr -a -g gfo 'git fetch origin --prune'
  abbr -a -g gfix 'git diff --name-only | uniq | xargs $EDITOR'

  function gl
    git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
  end

  abbr -a -g gm 'git merge --no-ff'
  abbr -a -g gmf 'git merge --ff-only'

  abbr -a -g gp 'git push'
  abbr -a -g gpf 'git push --force-with-lease'
  abbr -a -g gpristine 'git reset --hard && git clean -dfx'
  abbr -a -g gpu 'git push -u'

  abbr -a -g gr 'git reset'
  abbr -a -g grb 'git rebase'
  abbr -a -g grba 'git rebase --abort'
  abbr -a -g grbc 'git rebase --continue'
  abbr -a -g grbi 'git rebase -i'
  abbr -a -g grbm 'git rebase master'
  abbr -a -g grbs 'git rebase --skip'
  abbr -a -g grh 'git reset --hard'
  abbr -a -g grhc 'git reset --hard && git clean -fd'
  abbr -a -g grs 'git reset --soft'

  abbr -a -g gs 'git status -sb'
  abbr -a -g gsi 'git submodule init'
  abbr -a -g gst 'git stash'
  abbr -a -g gsta 'git stash apply'
  abbr -a -g gstc 'git stash clear'
  abbr -a -g gstd 'git stash drop'
  abbr -a -g gstl 'git stash list'
  abbr -a -g gsts 'git stash save'
  abbr -a -g gstst 'git stash show --text'
  abbr -a -g gstp 'git stash pop'
  abbr -a -g gstu 'git stash -u'
  abbr -a -g gsu 'git submodule update'

  abbr -a -g gunignore 'git update-index --no-assume-unchanged'
  abbr -a -g gunwip 'git log -n 1 | grep -q -c '\-\-wip\-\-' && git reset HEAD~1'
  abbr -a -g gup 'git smart-pull'

  abbr -a -g gwch 'git whatchanged -p --abbrev-commit --pretty=medium'
# Work In Progress (wip)
# These features allow to pause a branch development and switch to another one
# When you want to go back to work, just unwip it
  function gwip -d 'git commit a work-in-progress branch'
    git add -A; git rm (git ls-files --deleted) ^/dev/null; git commit -m '--wip-- [skip ci]'
  end

  abbr -a -g hide_hidden 'defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder'
  abbr -a -g hlp 'heroku logs -r production'
  abbr -a -g hls 'heroku logs -r staging'
  abbr -a -g hltp 'heroku logs -t -r production'
  abbr -a -g hlts 'heroku logs -t -r staging'
  abbr -a -g hrcp 'heroku run console -r production'
  abbr -a -g hrcs 'heroku run console -r staging'

  abbr -a -g prodlog 'tail -f log/production.log'
  abbr -a -g pt 'papertrail'

  abbr -a -g rc 'rails console'
  abbr -a -g rcs 'rails console --sandbox'
  abbr -a -g rd 'rails destroy'
  abbr -a -g rdb 'rails dbconsole'
  abbr -a -g rdm 'rails db:migrate'
  abbr -a -g rdms 'rails db:migrate:status'
  abbr -a -g rdmtc 'rails db:migrate db:test:clone'
  abbr -a -g rdr 'rails db:rollback'
  abbr -a -g rdtc 'rails db:test:clone'
  abbr -a -g rdsl 'rails db:schema:load'
  abbr -a -g rdtp 'rails db:test:prepare'
  abbr -a -g reload 'source ~/.config/fish/config.fish'
  # Can't use rg die to ripgrep
  abbr -a -g rj 'rails generate'
  abbr -a -g rjm 'rails generate migration'
  abbr -a -g rs 'rails server'
  abbr -a -g rsd 'rails server --debugger'
  abbr -a -g rsp 'rails server --port'
  abbr -a -g rst 'touch tmp/restart.txt'
  abbr -a -g rlc 'rails log:clear'
  abbr -a -g rr 'rails routes'
  abbr -a -g rrg 'rails routes | grep'
  abbr -a -g rsts 'rails stats'

  abbr -a -g s 'git status -sb'
  abbr -a -g show_hidden 'defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder'

  abbr -a -g t 'rspec'
  abbr -a -g ta 'trc && t && tsl'
  abbr -a -g tb 'bundle exec rspec'
  abbr -a -g testlog 'tail -f log/test.log'
  abbr -a -g tff 'rspec --fail-fast'
  abbr -a -g tfo 'rspec --only-failures'
  abbr -a -g tma 'tmux a -t '
  abbr -a -g tmb 'tmux a -t billing'
  abbr -a -g tmd 'tmux a -t deerlab'
  abbr -a -g tml 'tmux a -t luna'
  abbr -a -g tmm 'tmux a -t moonclerk'
  abbr -a -g trc 'bundle exec rubocop'
  abbr -a -g tsl 'bundle exec slim-lint app/**/*.slim'
  abbr -a -g twos 'rspec --exclude-pattern spec/system/**/*_spec.rb'
  abbr -a -g twoj 'rspec --tags ~js spec/'

  abbr -a -g vi 'nvim'
  abbr -a -g vim 'nvim'
  abbr -a -g vimdiff 'nvim -d'

  abbr -a -g ys 'yarn spec'
  abbr -a -g ysw 'yarn spec --watch'
end
