# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/john/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/john/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/john/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/Users/john/.fzf/shell/key-bindings.bash"
