
#!/bin/bash

# Symlink dotfiles for Ubuntu workstation



set -e



DOTFILES="$HOME/dotfiles"



echo "Installing dotfiles for Ubuntu..."



# Ghostty

mkdir -p ~/.config/ghostty

ln -sf "$DOTFILES/ghostty/config" ~/.config/ghostty/config



# tmux

ln -sf "$DOTFILES/tmux/tmux.conf" ~/.tmux.conf



# Bash additions

if ! grep -q "source.*bashrc-additions" ~/.bashrc; then

  echo "source $DOTFILES/bash/bashrc-additions" >> ~/.bashrc

fi



# Git

ln -sf "$DOTFILES/git/gitconfig" ~/.gitconfig



echo "Done! Restart your shell or run: source ~/.bashrc"

