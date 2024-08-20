# :house: Dotfiles

## :information_source: About

Yet another dotfiles repository.
Use [yadm] (Yet Another Dotfiles Manager) to manage.

## :floppy_disk: Usage

:one: Install [yadm] package or download from [github/yadm] manually

* Debian/Ubuntu
```sh
sudo apt install yadm
```

* Gentoo
```sh
sudo emerge --ask app-admin/yadm
```

* Manual
```sh
mkdir ~/bin
curl ~/bin/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm
chmod a+x ~/bin/yadm
```

:two: Clone

```sh
yadm clone https://github.com/winfred-lu/dotfiles.git
```

The clone command may result in warnings due to the existing dotfiles. Force overwrite with the following commands.
```sh
yadm fetch --all
yadm reset --hard origin/master
```

:three: Bootstrap

```sh
yadm bootstrap
```

## :star: Features

### :package: Applications

* [git](https://git-scm.com): Version control system
* [bash](https://www.gnu.org/software/bash/): Shell
* [zsh](http://zsh.sourceforge.net/Intro/intro_1.html): Shell
* [vim](https://github.com/vim/vim): Terminal text editor
* [neovim](https://neovim.io/): Terminal text editor
* [screen](https://github.com/vim/vim): Terminal multiplexer
* [tmux](https://github.com/vim/vim): Terminal multiplexer
* [fd](https://github.com/sharkdp/fd): Replacement for find
* [fzf](https://github.com/junegunn/fzf): Command-line fuzzy finder
* [ripgrep](https://github.com/BurntSushi/ripgrep): Replacement for grep


#### :shell: Shell configuration
  * TBC

#### :pencil: Vim

  * vim plugins are managed with [Vundle]
  * nvim plugins are managed with [lazy-nvim]

### :boot: Bootstrap

[yadm] has a built-in [**bootstrap**](https://yadm.io/docs/bootstrap) feature which enables further configuration of dotfiles.

* Bootstrap zsh
* Bootstrap vim and nvim
  * Automatically install vim and nvim plugins.

### :construction: TODO

  * X configuration

  * to be deleted reference: https://github.com/pwyde/dotfiles


## :page_with_curl: License

Dotfiles is public under the [MIT license](LICENSE).


[yadm]: https://yadm.io/
[Vundle]: https://github.com/VundleVim/Vundle.vim
[github/yadm]: https://github.com/TheLocehiliosan/yadm
[lazy-nvim]: https://github.com/folke/lazy.nvim
