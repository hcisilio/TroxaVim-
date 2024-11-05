return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "pylsp", "lua_ls" }
			})
		end
	},
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
			local navic = require("nvim-navic")
			local navbuddy = require("nvim-navbuddy")
			require("lspconfig").clangd.setup {
				on_attach = function(client, bufnr)
					navbuddy.attach(client, bufnr)
				end
			}

			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.pylsp.setup({
				capabilites = capabilities,
				settings = {
					pylsp = {
						plugins = {
							pycodestyle = {
								maxLineLength = 200,
							},
							flake8 = {
								-- maxLineLength = 200,
								ignore = {'E501', 'E231'},
							}
						}
					}
				},
				on_attach = function(client, bufnr)
					navic.attach(client, bufnr)
				end
			})
			lspconfig.lua_ls.setup({
				capabilites = capabilities,
				on_attach = function(client, bufnr)
					navic.attach(client, bufnr)
				end
			})

			vim.keymap.set('n', '<leader>lk', vim.diagnostic.goto_prev, { desc = 'Previous Diagnostic'})
			vim.keymap.set('n', '<leader>lj', vim.diagnostic.goto_next, { desc = 'Next Diagnostic'})
			vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = 'Go do Declaration'})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to Definition' })
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = 'Implementation' })
			vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, { desc = 'Signature Help'})
			vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code Action' })
			vim.keymap.set({ 'n', 'v' }, '<leader>lf', vim.lsp.buf.format, { desc = 'Code Format' })
			vim.keymap.set('n', '<leader>b', ':Navbuddy<CR>', { desc = 'NavBuddy' })
		end
	}
}

