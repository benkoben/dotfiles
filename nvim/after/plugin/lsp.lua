-- Configure our beeeaaaautifull language server.
-- local lsp = require('lsp-zero')
local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

lsp.setup()

lsp.ensure_installed({
	'gopls',
	'bicep-lsp',
	'terraform-ls',
	'yaml-language-server'
})

local cmp = require('cmp')

cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = false}),
  }
})

lsp.set_preferences({
  -- We do not use sign icons
  sign_icons = { }	
})

