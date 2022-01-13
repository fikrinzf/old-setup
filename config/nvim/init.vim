" ===== Plugins =====
call plug#begin('~/.config/nvim/plugged')

Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim',{'branch':'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', {'do': {-> fzf#install()}}
Plug 'junegunn/fzf.vim'
Plug 'turbio/bracey.vim'
Plug 'turbio/bracey.vim', {'do':'npm install --prefix server'}
Plug 'mattn/emmet-vim'
Plug 'joshdick/onedark.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'arcticicestudio/nord-vim'


call plug#end()



" ===== Essensial Settings =====
syntax enable
set number
set title
set mouse=a
set encoding=UTF-8
set nocompatible
set hidden
set termguicolors


colorscheme onedark

" ===== Keymaping =====
:imap jj <Esc>
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
    theme = 'palenight',
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
