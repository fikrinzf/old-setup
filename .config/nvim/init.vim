" ===== Plugins =====
call plug#begin('~/.config/nvim/plugged')

# Lua line
Plug 'nvim-lualine/lualine.nvim'
# Dev icon
Plug 'kyazdani42/nvim-web-devicons'
# Nerdtree
Plug 'preservim/nerdtree'
# Vim-polyglot
Plug 'sheerun/vim-polyglot'
# COC
Plug 'neoclide/coc.nvim',{'branch':'release'}
# Auto pairs
Plug 'jiangmiao/auto-pairs'
# Fuzzy finder
Plug 'junegunn/fzf', {'do': {-> fzf#install()}}
Plug 'junegunn/fzf.vim'
# Bracey/Live server html
Plug 'turbio/bracey.vim'
Plug 'turbio/bracey.vim', {'do':'npm install --prefix server'}
# Emmet
Plug 'mattn/emmet-vim'
# Lsp
Plug 'neovim/nvim-lspconfig'
# Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
# Icons
Plug 'ryanoasis/vim-devicons'
# Syntax highlight Nerdtree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
# Markdown preview
Plug 'iamcoo/markdown-preview.nvim'

" Colorscheme
Plug 'morhetz/gruvbox' " Gruvbox
Plug 'arcticicestudio/nord-vim' "Nord
Plug 'dracula/vim', { 'name': 'dracula' } "Dracula
Plug 'joshdick/onedark.vim' "Onedark
Plug 'ayu-theme/ayu-vim' " Ayu 

call plug#end()



" ===== Essensial Settings =====
syntax enable
set number
set relativenumber
set title
set mouse=a
set encoding=utf8
set nocompatible
set hidden
set termguicolors
set guifont=DroidSansMono\ Nerd\ Font\ 11 

" Ayu colorscheme options
" let ayucolor="dark" " This is default option
 let ayucolor="mirage"
" let ayucolor="light"

colorscheme ayu

" ===== Keymaping =====
" Vim
:imap jj <Esc>
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l
nnoremap <C-Up> : vertical resize +2 <CR>
nnoremap <C-Down> : vertical resize -2 <CR>

" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" FZF
silent! nmap <C-p> :Files<CR>
silent! nmap <C-g> :GFiles<CR>
silent! nmap <C-f> :Rg!
" Snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-l>" 

let g:user_emmet_leader_key='<C-Z>'
let g:user_emmet_expandabbr_key='<Tab>'




" ===== Lua =====
lua <<END
require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'ayu_mirage',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
END
