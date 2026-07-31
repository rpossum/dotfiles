# dotfiles

Personal dotfiles and configuration for Claude Code and development tools.

## Installation

Clone this repository and run the install script:

```bash
git clone https://github.com/rpossum/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./install.sh
```

The install script will create symlinks in your home directory pointing to the config files in this repository.

## Contents

- `.claude/CLAUDE.md` — Global Claude Code guidelines and workflows

## Updating across machines

After making changes to any config file:

```bash
cd ~/.dotfiles
git add .
git commit -m "Update config"
git push
```

Then on other machines:

```bash
cd ~/.dotfiles
git pull
```

The symlinks ensure changes take effect immediately.
