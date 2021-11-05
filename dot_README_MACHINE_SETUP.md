# Setup Notes

Additional items:

1. airlinetheme - airline is a status line plugin for vim. It has themes. I modified the badwolf theme so that unfocussed splits still displayed the file name in a readable color
2. Fonts - iterm2 uses `pragmatapro w20 regular`. I downloaded it for free somewhere.

=================================



1. **install a brewfile** using `brew bundle` when you're in the dir with your `brewfile`. It'll look for a brewfile and start installing all the things.
2. `brew leaves > brewfile - **creates** a `Brewfile` which contains all the stuff you've installed. Doesn't include the dependencies (use `brew dump` for that)
3. quick look plugins - markdown and .avi
4. typora
5. iterm2
    - colorschmeme - `bright lights`
    - key to open iterm - `preferences > keys > hotkey`
    - map command-A to ctrl A using hex code option (from https://tangledhelix.com/blog/2012/04/28/iterm2-keymaps-for-tmux/) 
      - profiles > keys > add new > action: send hex code > 0x01: ctrl-A
6. vim color scheme - badwolf
7. powerlevel10k
8. nerdfonts - `brew cask install font-hack-nerd-font`
9. grand perspective
10. quicklook plugins as `brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize suspicious-package quicklookase qlvideo` - but see cask install list

`cargo install broot`
`brew install --cask google-cloud-sdk` - the brew leafes command doesnt catch everything.
`brew update && brew install azure-cli`
`brew install pyenv-virtualenv`
`brew install ripgrep`
`brew install ack`
`brew install ansible`
`brew install tidwall/jj/jj`
`brew install jq`
`brew install ansible`
`brew install diff-so-fancy`


Vim needs the following dirs for permanent undo and for adding words to spelling dictionary
`mkdir ~/.vim/undo`
`mkdir ~/.vim/spell`
