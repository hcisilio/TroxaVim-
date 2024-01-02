return {
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		  dependencies = { 'nvim-lua/plenary.nvim' },
		  config = function()
			local builtin = require("telescope.builtin")
			-- local actions = require("telescope.actions")
			vim.keymap.set('n', '<C-p>', builtin.find_files, {})
			vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = 'Find Files' })
			vim.keymap.set('n', '<leader>st', builtin.live_grep, { desc = 'Live Grep' })
		  end
	},
	{
		'nvim-telescope/telescope-ui-select.nvim',
		config = function()
			require("telescope").setup({
			  extensions = {
				["ui-select"] = {
				  require("telescope.themes").get_dropdown {
					-- even more opts
				  }
				}
			  }
			})
			require("telescope").load_extension("ui-select")
		end
	},
}
