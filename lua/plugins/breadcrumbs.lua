return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{
				"SmiteshP/nvim-navbuddy",
				dependencies = {
					"MunifTanjim/nui.nvim",
					"SmiteshP/nvim-navic",
				},
				opts = { lsp = { auto_attach = true } }
			}
		},
		config = function()
			local navbuddy = require("nvim-navbuddy")

			require("lspconfig").clangd.setup {
				on_attach = function(client, bufnr)
					navbuddy.attach(client, bufnr)
				end
			}

			vim.keymap.set('n', '<leader>b', ':Navbuddy<CR>', {})
		end
	}
}
