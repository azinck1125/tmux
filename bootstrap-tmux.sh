#!/usr/bin/env bash
set -euo pipefail

# 1) Put config in place
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

link_dir() {
  local src="$1"
  local dest="$2"

  mkdir -p "$(dirname "$dest")"

  if [ -L "$dest" ]; then
    echo "Updating symlink: $dest -> $src"
    ln -sfn "$src" "$dest"
    return
  fi

  if [ -e "$dest" ]; then
    echo "Skipping: $dest already exists and is not a symlink"
    echo "Rename it first, e.g.: mv $dest ${dest}.bak"
    return
  fi

  echo "Creating symlink: $dest -> $src"
  ln -s "$src" "$dest"
}

link_dir "$DOTFILES_DIR/tmux.conf" "$HOME/.tmux.conf"

# 2) Install TPM if missing
if [ ! -d ~/.tmux/plugins/tpm ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  fi

  echo "TPM installed. Next:"
  echo "  - start tmux"
  echo "  - press: prefix + I (capital i) to install plugins"
