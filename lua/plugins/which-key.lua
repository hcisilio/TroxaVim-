return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
    local wk = require("which-key")
    wk.register({
      ["<leader>q"] = { "<cmd>q<cr>", "Close nvim" },
      ["<leader>Q"] = { "<cmd>q<cr>", "Close nvim" },
      ["<leader>w"] = { "<cmd>w<cr>", "Save File" },
      ["<leader>W"] = { "<cmd>w<cr>", "Save File" },
      ["<leader>b"] = { "<cmd>Navbuddy<cr>", "Navbuddy" },
      ["<leader>l"] = { name = "+LSP" },
    })
	end,
}
