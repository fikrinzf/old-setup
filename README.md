# DOTFILES

### Description
This is my personal dotfiles. In this dotfiles i use bspwm as window manager, because this wm very lightweight and powerfull. For text editor i use Neovim.

### Setup
Before you use this dotfiles, you should install all the dependencies bellow

* #### Neovim
	**Install Neovim** : \
	Arch : `sudo pacman -S neovim`\
	Debian/Ubuntu : `sudo apt install neovim`\
	<br>
	**Plugin Manager**\
	If you haven't install Vim plugin manager, you should install first.
	You can see this repository to install it : [vim-plug](https://github.com/junegunn/vim-plug)
	<br>
	<br>
	**Notes :** 
	*	You should install node.js v.12 or higher and install `pynvim`. 
	*	If bracey plugin error, just go to `~/.config/nvim/plugged/bracey.vim` with terminal and run this command `npm install --prefix server`


* ##### Bspwm and Sxhkd
	**Installation** : \
	Arch : `sudo pacman -S bspwm sxhkd`\
	Debian/Ubuntu : `sudo apt install bspwm sxhkd`

* ##### Fuzzy Finder
	Follow [this repository](https://github.com/junegunn/fzf) to install

### Configuration
Clone this repository `git clone https://fikrinzf/dotfiles`\
Put all files in your `$HOME` directory. Rename `config`, `tmux.conf`, `zshrc` to  `.config`, `.tmux.conf`, `.zshrc` 
