# dotfiles

Winston Larson's personal dotfiles, including
* bash configuration (colors, vi mode)
* vim configuration for python coding (colors, plugins, language settings)
* tmux configuration (re-binding keys)

## How to use
1. After cloning the repo, create symlinks with GNU Stow
```
brew update
brew install stow
cd ~/.dotfiles
stow bash
stow vim
stow tmux
```

2. Add the iTerm2 colorscheme in iTerm2: Preferences -> Profiles -> Colors -> Color Presets