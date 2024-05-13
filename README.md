# My dotfiles

![doct](https://utfs.io/f/d7380515-2b97-42d5-9846-699b909912ff_doct.png)

![nvim](https://utfs.io/f/d66cb5a6-8c10-407d-b3bf-1eaf6819c965_Snipaste_2023-06-22_21-46-21.png)

## Setup

use `Symlink` link `~/.config/nvim` to `doctfiles/nvim`

```bash
cp -r ~/.config/nvim ~/.config/nvim.bak
rm -rf ~/.config/nvim
cd dotfiles
ln -s $PWD/nvim ~/.config/nvim
```

## iterm2

**Open iterm with tmux**:

Profiles > General > Command > Send text at start:

`tmux ls && read tmux_session && tmux attach -t ${tmux_session:-default} || tmux new -s ${tmux_session:-default}`

## Neovim

## oh-my-zsh

[setup](https://gist.github.com/n1snt/454b879b8f0b7995740ae04c5fb5b7df)

## Nerdfonts

- JetBrainsMono Nerd Font
- Monaspace Nerd Font
- Firacode Nerd Font
- Iosevka Nerd Font

```bash
brew tap homebrew/cask-fonts

brew search font-mona

brew install font-monaspace-nerd-font
```

### alias

```bash
alias vim="nvim"
alias zshrc="nvim ~/.zshrc"
alias szsh="source ~/.zshrc"
alias vimrc="nvim ~/.config/nvim/init.lua"

alias g="git"

alias my-ip="ipconfig getifaddr en0"
```
