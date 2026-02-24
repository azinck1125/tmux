#!/usr/bin/env bash
set -euo pipefail

# 1) Put config in place
mkdir -p ~/.config/tmux
ln -sf ~/dotfiles/tmux/tmux.conf ~/.tmux.conf

# 2) Install TPM if missing
if [ ! -d ~/.tmux/plugins/tpm ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  fi

  echo "TPM installed. Next:"
  echo "  - start tmux"
  echo "  - press: prefix + I (capital i) to install plugins"
