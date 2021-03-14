ryanwood's dotfiles
===================

Started by cherry picking good ideas from [Thoughbot's dotfiles](https://github.com/thoughtbot/dotfiles) and customized from there. It uses [rcm](https://github.com/thoughtbot/rcm) to manage the linking.

Install
-------

Clone onto your laptop:

    git clone https://github.com/ryanwood/dotfiles.git ~/dotfiles

Install [rcm](https://github.com/thoughtbot/rcm):

    brew tap thoughtbot/formulae
    brew install rcm

Install the dotfiles:

    env RCRC=$HOME/dotfiles/rcrc rcup

You can safely run `rcup` multiple times to update:

    rcup

You should run `rcup` after pulling a new version of the repository to symlink
any new files in the repository.

Fish Shell Configuration
------------------------

Based on: https://github.com/rstacruz/fishfiles/blob/master/README.md

```bash
brew install fish
```

[Install as the default shell](https://fishshell.com/docs/current/index.html#default-shell) (optional).

In a new shell:

```bash
# Install dependencies
fisher

# Load abbreviations
source ~/.config/fish/abbreviations/all.fish
```
