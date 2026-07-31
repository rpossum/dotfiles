#!/bin/bash

# Install script for dotfiles
# Creates symlinks from this repo to your home directory

set -e

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
HOME_DIR="$HOME"

echo "Installing dotfiles from $DOTFILES_DIR..."

# Create .claude directory if it doesn't exist
mkdir -p "$HOME_DIR/.claude"

# Symlink CLAUDE.md
if [ -f "$DOTFILES_DIR/.claude/CLAUDE.md" ]; then
  rm -f "$HOME_DIR/.claude/CLAUDE.md"
  ln -s "$DOTFILES_DIR/.claude/CLAUDE.md" "$HOME_DIR/.claude/CLAUDE.md"
  echo "✓ Linked .claude/CLAUDE.md"
fi

echo "Installation complete!"
echo ""
echo "To keep dotfiles in sync across machines:"
echo "  cd $DOTFILES_DIR"
echo "  git pull   # pull latest changes"
echo "  git push   # push your changes"
