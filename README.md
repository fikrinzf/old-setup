### Description
This is my **personal configuration** for bspwm window manager and neovim. 

Here are some details about my setup :
* **Window Manager** : [Bspwm](https://github.com/baskerville/bspwm)
* **Text Editor** : [Neovim](https://github.com/neovim/neovim)
* **Hotkey Daemon** : [sxhkd](https://github.com/baskerville/sxhkd)
* **Menu Launcher** : [Rofi](https://github.com/davatorium/rofi)
* **Panel**: [Polybar](https://github.com/polybar/polybar)
* **Terminal** : [Kitty](https://github.com/kovidgoyal/kitty)
* **Shell** : [Zsh](https://www.zsh.org/)

### Instalation
Before using this dotfiles, you should install the dependencies below. If you have installed before just skip this setup.


[commnet]: # (Window Manager)
<details>
<summary><strong>Bspwm & Sxhkd</strong></summary>

Arch : `sudo pacman -S bspwm sxhkd`\
Debian & Ubuntu : `sudo apt install bspwm sxhkd`
</details>


[commnet]: # (Neovim)
<details>
<summary><strong>Neovim</strong></summary>

**Installation**\
Arch : `sudo pacman -S neovim`\
Debian & Ubuntu : `sudo apt install neovim`

**Plugin Manager**\
In this dotfiles i use [vim-plug](https://github.com/junegunn/vim-plug) to manage all plugin on neovim, you can use other plugin manager such `Pathogen` or `Vundle`
</details>


[commnet]: # (Terminal)
<details>
<summary><strong>Kitty</strong></summary>

Arch : `sudo pacman -S kitty`\
Debian & Ubuntu : `sudo apt install kitty`
</details>


[commnet]: # (Panel)
<details>
<summary><strong>Polybar</strong></summary>

**Installation**\
Arch : \
Polybar not available on arh pacman, so you can install from aur.
```
git clone https://aur.archlinux.org/polybar.git
cd polybar
makepkg -si
```
Debian & Ubuntu : `sudo apt install polybar`
</details>

[commnet]: # (Launcher)
<details>
<summary><strong>Rofi</strong></summary>

**Installation**\
Arch : `sudo pacman -S rofi`\
Debian & Ubuntu : `sudo apt install rofi`
</details>

[commnet]: # (Shell)
<details>
<summary><strong>Zsh</strong></summary>

**Installation**\
Arch : `sudo pacman -S zsh`\
Debian & Ubuntu : `sudo apt install zsh`
</details>

### Setup
Clone this repository `git clone https://github.com/fikrinzf/dotfiles`\
Copy all files to your `$HOME` directory 

### Configuration
**Bspwm** :\
You can customize bspwm in `~/.config/bspwm/bspwmrc`

**Sxhkd** :\
Configuration file at `~/.config/sxhkd/sxhkdrc`. in this file you can add or remove keybinds also remake the keybinds

**Change Neovim Colorscheme** :\
Default Neovim colorscheme is `ayu_mirage`, but you can use other colorscheme. I have added some themes like `Gruvbox`, `Dracula`, `Nord`, `Onedark`, `ayu`. 

Open file `~/.config/nvim/init.vim` Just change `colorscheme ayu` to colorscheme what you want. ex `colorscheme nord`.

**Change theme lualine** :\
Lualine is statusline at bottom when you open vim, you can change this theme by opening file at `~/.config/nvim/init.vim`. search this section `theme = 'ayu_mirage'` and change theme what you want. For details you can visit official repository lualine [here](https://github.com/nvim-lualine/lualine.nvim)

**Theme Kitty** :\
Configuration file at `~/.config/kitty/kitty.conf`\
If you want to change theme just edit this section `include themes/ayu_mirage`. Also you can customize kitty in `other.conf`
