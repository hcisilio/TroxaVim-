vim.cmd("set smartindent")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set softtabstop=4")
vim.cmd("set noexpandtab")
vim.cmd("set number")
vim.g.mapleader = " "
vim.opt.winbar = "%f > %{%v:lua.require'nvim-navic'.get_location()%}"
