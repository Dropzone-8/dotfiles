
#!/bin/bash

# Symlink dotfiles for WSL (Windows)



set -e



DOTFILES="$HOME/dotfiles"



echo "Installing dotfiles for WSL..."



# tmux

ln -sf "$DOTFILES/tmux/tmux.conf" ~/.tmux.conf



# Bash additions

if ! grep -q "source.*bashrc-additions" ~/.bashrc; then

  echo "source $DOTFILES/bash/bashrc-additions" >> ~/.bashrc

fi



# Git

ln -sf "$DOTFILES/git/gitconfig" ~/.gitconfig



echo ""

echo "Done! Restart your shell or run: source ~/.bashrc"

echo ""

echo "NOTE: Alacritty config lives on the Windows side."

echo "To sync it, run:"

echo "  cp ~/dotfiles/alacritty/alacritty.toml /mnt/c/Users/\$(cmd.exe /C 'echo %USERNAME%' 2>/dev/null | tr -d '\r')/AppData/Roaming/alacritty/alacritty.toml"

