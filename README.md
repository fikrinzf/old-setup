### Description
This is my **personal configuration** for bspwm window manager and neovim. This dotfiles was build and tested on Manjaro Linux. If you use other distro and find an error, discussion are open.  

**Details setup**<br>
Here are some details about my setup :
* **Window Manager** : [Bspwm](https://github.com/baskerville/bspwm)
* **Text Editor** : [Neovim](https://github.com/neovim/neovim)
* **Hotkey Daemon** : [sxhkd](https://github.com/baskerville/sxhkd)
* **Menu Launcher** : [Rofi](https://github.com/davatorium/rofi)
* **Panel**: [Polybar](https://github.com/polybar/polybar)
* **Terminal** : [Kitty](https://github.com/kovidgoyal/kitty)
* **Shell** : [Zsh](https://www.zsh.org/)

Before using this dotfiles, make sure you have installed all stuff in my **details setup**. Afters install all stuf above you also should install another stuff bellow.
<details>
<summary><strong>Install</strong></summary>

* [Vim-Plug](https://github.com/junegunn/vim-plug)
* [Nodejs v12 or higher](https://nodejs.org/en/)
* [Pynvim](https://pynvim.readthedocs.io/en/latest/installation.html)
* [Arandr](https://gitlab.com/arandr/arandr)
* Nitrogen : `sudo pacman -S nitrogen`
* lxappearance : `sudo pacman -S lxappearance`
* bmon : `sudo pacman -S bmon`
</details>


### Instalation
Clone this repository 
``` sh
git clone https://github.com/fikrinzf/dotfiles
```

* After cloning this repository, copy all files to `$HOME` directory. 
* **Neovim** : Open Neovim and type `:PlugInstall` to install all Neovim plugins. 
* **Wallpaper** : Add this script  in `.xprofile`. if `.xprofile` doesn't exist you can create manually.
```sh
nitrogen --random --set-zoom-fill &	
```
Make sure you have set the wallpaper with nitrogen.
* **Monitor** : Open arandr and set monitor configuration, after you done with the configuration, save the configuration. 
	- Copy all configuration in file`.xprofile`.
* **Icons** : Open lxappearance and chose WhiteSur icon, but you can also add another icons in `~/.themes`
	


### Configuration 
For the advance configuration you can follow this. <br>
* **Neovim**<br>

By default colorscheme this Neovim is `ayu_mirage`. but in this configuration im have added some colorscheme like `Gruvbox`, `Nord`, `Dracula` and `OneDark`

If you want to change colorscheme, just open config file in `~/.config/nvim/init.vim` and edit this section
```vim
colorscheme ayu
```

Not only Neovim colorscheme, you also can edit the lualine colorscheme by edit this section
```vim
theme = 'ayu_mirage'
```
* **Rofi** 

Customize file in `~/.config/rofi`.
But, if you too lazy to customize rofi, you can install rofi theme. just follow this [repository](https://github.com/adi1090x/rofi)

* **Bspwm and Sxhkd** 
	
Bspwm configuration in `~/.config/bspwm/bspwmrc`.

Sxhkd configuration in `~/.config/sxhkd/sxhkdrc`. you can make your own keyboard shortcut in this file.

This is the keyboard shortcut in this dotfiles : 

Shortcut | Action
---|---
`super + return` | kitty Terminal
`super + w` | Close the window
`super + [ or ]` | Change workspace
`super + d` | App launcher
`super + x` | Powermenu
`super + v` | Network manager
`ctrl + alt + b` | Min browser
`ctrl + alt + f` | Thunar file manager
`ctrl + alt + s` | Spotify
`ctrl + alt + p` | xfce4-screenshoot

This is only part of sxhkd, you can read all shortcut in `~/.config/sxhkd/sxhkdrc` file.


#### Notes 
* If you find an error lets discuss 
* I don't know this will work with all distro or not
* Thanks for using my dotfiles :)

