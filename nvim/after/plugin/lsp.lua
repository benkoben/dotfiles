-- Configure our beeeaaaautifull language server.
local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.setup()

lsp.ensure_installed({
	'gopls',
	'bicep-lsp',
	'terraform-ls',
	'yaml-language-server'
})

lsp.set_preferences({
  -- We do not use sign icons
  sign_icons = { }	
})
