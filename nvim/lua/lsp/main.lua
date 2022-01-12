local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require'lspconfig'.gopls.setup{
  capabilities = capabilities,
  on_attach = function()
      --requires neovim 0.7
      --ctrl+t to jump back on the definition
      --ctrl+o to jump back on the jumplist
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
      vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, {buffer=0})
      --go to the implementation and not the definition (usefull in golang while working with interfaces)
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
      vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, {buffer=0})
      vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, {buffer=0})
      vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>", {buffer=0})
      vim.keymap.set("n", "<leader>re", vim.lsp.buf.rename, {buffer=0})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {buffer=0})
  end,
} --- connect to server


-- lsp autocomplete
vim.opt.completeopt = {"menu", "menuone", "noselect"}

-- Setup nvim-cmp.
local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  mapping = {
    ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' }, -- For luasnip users.
  }, {
    { name = 'buffer' },
  })
})