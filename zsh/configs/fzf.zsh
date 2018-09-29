# Setup fzf
# ---------
if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  export PATH="$PATH:/usr/local/opt/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/usr/local/opt/fzf/shell/key-bindings.zsh"

# Use ripgrep so ignores will be respected and speeeeed
# https://github.com/junegunn/fzf#respecting-gitignore
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
