# dotfiles

Winston Larson's personal dotfiles, including
* bash configuration (colors, vi mode)
* vim configuration for python coding (colors, plugins, language settings)
* tmux configuration (re-binding keys)

## Symlinks
After cloning the repo, create symlinks with GNU Stow
```
brew update
brew install stow
cd ~/.dotfiles
stow bash
stow vim
stow tmux
```
