" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    " lsp 
    Plug 'neovim/nvim-lspconfig'

    " lsp autocomplete
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/nvim-cmp'

    " lsp snip manager
    Plug 'L3MON4D3/LuaSnip'
    Plug 'saadparwaiz1/cmp_luasnip'

    "Telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
    Plug 'kyazdani42/nvim-web-devicons'

    " Treesitter
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

    "TeX
    Plug 'lervag/vimtex'

    "Colors
    Plug 'tjdevries/colorbuddy.vim'
    Plug 'tjdevries/gruvbuddy.nvim'

    "Icons
    Plug 'kyazdani42/nvim-web-devicons'

    "Go
    "  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

    "Zettelkasten
    Plug 'pyrho/nerveux.nvim'
    Plug 'nvim-lua/popup.nvim'
    "  Plug 'plasticboy/vim-markdown'
    "Plug 'oberblastmeister/neuron.nvim', { 'branch': 'unstable' }

    "Autoformat
    ""   Plug 'lukas-reineke/lsp-format.nvim'

call plug#end()
