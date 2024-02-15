dotfiles
========

Yet another dotfiles repository. Use [yadm] to manage.

Usage
-----

1. Install [yadm] package or download from [github/yadm]

```sh
sudo apt install yadm
```

Or

```sh
mkdir ~/bin
curl ~/bin/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm
chmod a+x ~/bin/yadm
```

2. Clone
```sh
yadm clone https://github.com/winfred-lu/dotfiles.git
```

3. Bootstrap
```sh
yadm bootstrap
```

Features
--------

### shell configuration
  * bash
  * zsh
  * tmux

### vim configuration

  * vim plugins are managed with Vundle
  * nvim plugins are managed with [lazy-nvim]

### TODO

  * X configuration


[yadm]: https://yadm.io/
[Vundle.vim]: https://github.com/VundleVim/Vundle.vim
[github/yadm]: https://github.com/TheLocehiliosan/yadm
[lazy-nvim]: https://github.com/folke/lazy.nvim
