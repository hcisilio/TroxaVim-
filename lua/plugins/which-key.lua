return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
    local wk = require("which-key")
    wk.add({
      {"<leader>q", "<cmd>q<cr>", desc = "Close nvim" },
      {"<leader>Q", "<cmd>q<cr>", desc = "Close nvim" },
      {"<leader>w", "<cmd>w<cr>", desc = "Save File" },
      {"<leader>W", "<cmd>w<cr>", desc = "Save File" },
      {"<leader>b", "<cmd>Navbuddy<cr>", desc = "Navbuddy" },
      {"<leader>l", group = "+LSP" },
    })
	end,
}
