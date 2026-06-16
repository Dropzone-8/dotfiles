
#!/bin/bash

# Deploy minimal config to a remote server

# Usage: ./deploy-remote.sh user@hostname



REMOTE=$1



if [ -z "$REMOTE" ]; then

  echo "Usage: ./deploy-remote.sh user@hostname"

  exit 1

fi



echo "Deploying minimal config to $REMOTE..."



ssh "$REMOTE" "mkdir -p ~/.config/nvim"

scp ~/dotfiles/nvim/minimal-init.lua "$REMOTE:~/.config/nvim/init.lua"

scp ~/dotfiles/tmux/tmux.conf "$REMOTE:~/.tmux.conf"



echo "Done! Minimal config deployed to $REMOTE"

