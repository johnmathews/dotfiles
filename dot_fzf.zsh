# Setup fzf
# ---------
case `uname` in
  Darwin)
    if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
      export PATH="${PATH:+${PATH}:}/usr/local/opt/fzf/bin"
    fi
  ;; 
  Linux)
    if [[ ! "$PATH" == */home/linuxbrew/.linuxbrew/opt/fzf/bin* ]]; then
      export PATH="${PATH:+${PATH}:}/home/linuxbrew/.linuxbrew/opt/fzf/bin"
    fi
  ;;
esac


# Auto-completion
# ---------------

case `uname` in
  Darwin)
    [[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.zsh" 2> /dev/null
  ;; 
  Linux)
    [[ $- == *i* ]] && source "/home/linuxbrew/.linuxbrew/opt/fzf/shell/completion.zsh" 2> /dev/null
  ;;
esac

# Key bindings
# ------------
case `uname` in
  Darwin)
    source "/usr/local/opt/fzf/shell/key-bindings.zsh"
  ;; 
  Linux)
    source "/home/linuxbrew/.linuxbrew/opt/fzf/shell/key-bindings.zsh"
  ;;
esac


# Notes
# OS checking question: https://unix.stackexchange.com/questions/252166/how-to-configure-zshrc-for-specfic-os
