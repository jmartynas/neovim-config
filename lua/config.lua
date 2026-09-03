vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.cursorline = true

vim.opt.timeoutlen = 500
vim.opt.updatetime = 4000

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true

vim.opt.completeopt = "menu,menuone,noselect,popup"
vim.o.autocomplete = false

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = false
vim.opt.smartindent = true
vim.opt.smarttab = true

vim.opt.wrap = false

vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99
vim.opt.fdc = "0"

vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80"

vim.opt.scrolloff = 8

vim.opt.swapfile = false

vim.opt.showmode = true
vim.opt.cmdheight = 1

vim.opt.clipboard:append("unnamedplus")

vim.opt.fixeol = true

vim.o.autoread = true

vim.o.background = "dark"

vim.diagnostic.config({
	virtual_text = {
		virt_text_pos = "eol",
	},

	virtual_lines = {
		current_line = true,
	},

	signs = true,
	underline = true,
	update_in_insert = false,
})
