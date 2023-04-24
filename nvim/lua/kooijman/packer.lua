-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                          , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }


  -- lsp
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {                                      -- Optional
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lua'},
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
      {'rafamadriz/friendly-snippets'},
    }
  }

  -- auto-pairs
  use('jiangmiao/auto-pairs')

  -- fugitive
  use ('tpope/vim-fugitive')
  -- undotree
  use 'mbbill/undotree'

  -- Harpoon
  use('nvim-lua/plenary.nvim')
  use('ThePrimeagen/harpoon')

  -- Treesitter
  use('nvim-treesitter/playground')
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = { "c", "lua", "go", "terraform", "python", "javascript", "vim", "vimdoc", "query" },
  
    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,
  
    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,
  
    highlight = {
      enable = true,
      -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
      -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
      -- Using this option may slow down your editor, and you may see some duplicate highlights.
      -- Instead of true it can also be a list of languages
      additional_vim_regex_highlighting = false,
    },
  }


  use({ 'rose-pine/neovim', as = 'rose-pine' })
  require('rose-pine').setup({
	--- @usage 'auto'|'main'|'moon'|'dawn'
	variant = 'moon',
	--- @usage 'main'|'moon'|'dawn'
	dark_variant = 'moon',
	bold_vert_split = false,
	dim_nc_background = false,
	disable_background = false,
	disable_float_background = false,
	disable_italics = false,
	
	--- @usage string hex value or named color from rosepinetheme.com/palette
	groups = {
 		background = 'base',
 		background_nc = '_experimental_nc',
 		panel = 'surface',
 		panel_nc = 'base',
 		border = 'highlight_med',
 		comment = 'muted',
 		link = 'iris',
 		punctuation = 'subtle',
 
 		error = 'love',
 		hint = 'iris',
 		info = 'foam',
 		warn = 'gold',
 
 		headings = {
 			h1 = 'iris',
 			h2 = 'foam',
 			h3 = 'rose',
 			h4 = 'gold',
 			h5 = 'pine',
 			h6 = 'foam',
 		}
 		-- or set all headings at once
 		-- headings = 'subtle'
 	},
 
 	-- Change specific vim highlight groups
 	-- https://github.com/rose-pine/neovim/wiki/Recipes
 	highlight_groups = {
 		ColorColumn = { bg = 'rose' },
 
 		-- Blend colours against the "base" background
 		CursorLine = { bg = 'foam', blend = 10 },
 		StatusLine = { fg = 'love', bg = 'love', blend = 10 },
 	}
})

  -- Set colorscheme after options
  vim.cmd('colorscheme rose-pine')
end)


