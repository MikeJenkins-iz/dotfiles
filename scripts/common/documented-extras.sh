#!/bin/bash

apps=(
  Schniz/tap/fnm
  bash-completion2
  fd
  fortune
  fzf
  luajit --HEAD
  neovim --HEAD
  nvm
  ripgrep
  tmux
  tmuxinator
  watchman
)

brew install "${apps[@]}"

appCasks=(
  spotify
  font-fira-code
  font-source-code-pro
)

brew tap caskroom/fonts

brew cask install "${appCasks[@]}"
