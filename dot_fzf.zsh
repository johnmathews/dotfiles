# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/jm943l/.local/share/nvim/site/pack/packer/start/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/$USER/.local/share/nvim/site/pack/packer/start/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/$USER/.local/share/nvim/site/pack/packer/start/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/$USER/.local/share/nvim/site/pack/packer/start/fzf/shell/key-bindings.zsh"
