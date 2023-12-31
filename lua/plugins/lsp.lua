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
				ensure_installed = { "pylsp" }
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.pylsp.setup({
				capabilites = capabilities,
			})

			vim.keymap.set('n', '<leader>lk', vim.diagnostic.goto_prev, {})
			vim.keymap.set('n', '<leader>lj', vim.diagnostic.goto_next, {})
			vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
			vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, {})
			vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
			vim.keymap.set({ 'n', 'v' }, '<leader>lf', vim.lsp.buf.format, {})
		end
	}
}

