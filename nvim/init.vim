" general settings
source $HOME/.config/nvim/general/settings.vim 

" plugins
source $HOME/.config/nvim/vim-plug/plugins.vim

" themes / colors
"source $HOME/.config/nvim/themes/dichromatic.vim
source $HOME/.config/nvim/themes/colors.vim

" plugins config
"source $HOME/.config/nvim/plug-config/lsp-config.vim
"luafile $HOME/.config/nvim/lua/config/compe-config.lua
"luafile $HOME/.config/nvim/lua/lsp/python-lsp.lua
"luafile $HOME/.config/nvim/lua/lsp/bash-lsp.lua
source $HOME/.config/nvim/plug-config/telescope.vim
"source $HOME/.config/nvim/plug-config/coc-config.vim
source $HOME/.config/nvim/plug-config/vimtex.vim

luafile $HOME/.config/nvim/lua/lsp/main.lua

"luafile $HOME/.config/nvim/plug-config/devicons.lua


" lsp
"lua << EOF
"require'lspconfig'.pyright.setup{}
"EOF
"luafile $HOME/.config/nvim/lua/config/lsp-config.lua
"source $HOME/.config/nvim/plug-config/cmp-config.vim
"luafile $HOME/.config/nvim/lua/config/cmp/default.lua
