return {
	'akinsho/toggleterm.nvim',
	config = function()
		vim.keymap.set('n', '<leader>t', ':ToggleTerm<CR>', { desc = 'Terminal'})
		vim.keymap.set('n', '<leader>g', ':TermExec cmd="git status"<CR>', { desc = 'Git Status'})
		require("toggleterm").setup({
			direction = 'float',
			shade_terminals = true,
			float_opts = {
				border = 'curved', -- 'single' | 'double' | 'shadow' | 'curved'
				winblend = 3,
			}
		})
	end
}

