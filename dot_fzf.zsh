# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/jm943l/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/jm943l/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/jm943l/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/jm943l/.fzf/shell/key-bindings.zsh"
