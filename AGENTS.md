# Repository Guidelines

## Repository Structure
- This is a small personal dotfiles repository.
- `files/` contains dotfiles and helper files that are intended to be linked into `$HOME`.
- `install.sh` loops over every top-level entry in `files/` and runs `ln -sf "$PWD/files/<name>" ~`, so `files/.zshrc` becomes `~/.zshrc`, `files/.gitconfig` becomes `~/.gitconfig`, and `files/.byobu` becomes `~/.byobu`.
- `README` is intentionally minimal.
- `files/gitwhy` is a tiny helper used from Vim mappings to show the commit for a blamed line.

## Important Files
- `files/.zshrc`: shell environment, history behavior, prompt, aliases, and zle/peco history selection.
- `files/.gitconfig`: Git aliases, default identity, merge tool, and global excludes file.
- `files/.vimrc`: Vundle-based Vim/Neovim configuration, plugins, mappings, and language settings.
- `files/.byobu/`: Byobu/tmux/screen configuration copied as a directory symlink into `$HOME`.

## Editing Notes
- Prefer small, direct edits that preserve the existing plain shell/Vim style.
- Keep file contents ASCII unless the edited file already contains Japanese comments or there is a clear reason to add Japanese text.
- Be careful with `install.sh`: running it changes symlinks in `$HOME`, clones Vundle, and starts Vim/Neovim plugin installation. Do not run it just to validate a small edit.
- When changing shell config, avoid requiring new external dependencies unless the repo already uses them or the user explicitly asks.

## Validation
- For `files/.zshrc`, run:
  ```sh
  zsh -n files/.zshrc
  ```
- For shell scripts such as `install.sh` or `files/gitwhy`, run:
  ```sh
  sh -n install.sh
  sh -n files/gitwhy
  ```
- For Vim config, prefer a syntax/structure review unless the user asks to launch Vim or install plugins.

## Current zsh Behavior
- zsh history uses `EXTENDED_HISTORY` and `INC_APPEND_HISTORY_TIME`, so future `~/.zsh_history` entries include command start time and elapsed seconds.
- The prompt uses `PROMPT_SUBST` and includes the current prompt-render time as `[time:%D{%H:%M:%S}]`.
