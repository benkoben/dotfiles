-- Navigation
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8

-- Indenting
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Backup
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Searching
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Styling
vim.opt.termguicolors = true

-- Speed (Dont use this if swap is enabled)
vim.opt.updatetime = 50

-- Set <leader>
-- vim.g is typically used for "let" in vimscript
vim.g.mapleader = " "

-- Remaps
-- vim.keymap.set is typically used for "set" in vimscript
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

