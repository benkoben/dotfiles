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
vim.g.mapleader = " "

-- Remaps
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- setup diagnostics
vim.diagnostic.config({ virtual_text = false })
vim.api.nvim_create_autocmd({ "CursorHold" }, {
	callback = function()
		if vim.lsp.buf.server_ready() then
			vim.diagnostic.open_float()
		end
	end,
})

-- set up LSP signs
for type, icon in pairs({
	Error = "",
	Warn = "",
	Hint = "",
	Info = "",
}) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- Copilot 
vim.g.copilot_assume_mapped = true 
