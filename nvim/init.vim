" general settings
source $HOME/.config/nvim/general/settings.vim 

" plugins
source $HOME/.config/nvim/plugins/plugins.vim

" plugins config
source $HOME/.config/nvim/plug-config/telescope.vim
source $HOME/.config/nvim/plug-config/vimtex.vim
source $HOME/.config/nvim/plug-config/treesitter.vim
luafile $HOME/.config/nvim/plug-config/devicons.lua
luafile $HOME/.config/nvim/plug-config/nerveux.lua

" lsp config
luafile $HOME/.config/nvim/lua/lsp/main.lua

" themes / colors
"source $HOME/.config/nvim/themes/dichromatic.vim
source $HOME/.config/nvim/themes/colors.vim

" Autoformat
"luafile $HOME/.config/nvim/plug-config/lsp-format.lua
