" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/autoload/plugged')
  Plug 'sheerun/vim-polyglot'     " Better syntax support
 " Plug 'scrooloose/NERDTree'      " File explorer
  Plug 'jiangmiao/auto-pairs'     " Auto pairs for '(' '[' '{'
  Plug 'romainl/vim-dichromatic'  " A dark colorscheme for color blind vimmers, but not only.
  Plug 'neovim/nvim-lspconfig'    " lsp
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

"  Plug 'hrsh7th/nvim-compe'       " lsp
"  Plug 'hrsh7th/nvim-cmp'
"  Plug 'hrsh7th/cmp-buffer'
"  Plug 'hrsh7th/cmp-nvim-lua'

  "Telescope
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

  "TeX
  Plug 'lervag/vimtex'

  "Colors
  Plug 'tjdevries/colorbuddy.vim'
  Plug 'tjdevries/gruvbuddy.nvim'


  "Go
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  

call plug#end()
