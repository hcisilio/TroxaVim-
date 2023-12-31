return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
    local wk = require("which-key")
    wk.register({
      ["<leader>f"] = { "<cmd>Telescope find_files<cr>", "Find File" },
      ["<leader>q"] = { "<cmd>q<cr>", "Close nvim" },
      ["<leader>Q"] = { "<cmd>q<cr>", "Close nvim" },
      ["<leader>w"] = { "<cmd>w<cr>", "Save File" },
      ["<leader>W"] = { "<cmd>w<cr>", "Save File" },
      ["<leader>b"] = { "<cmd>Navbuddy<cr>", "Navbuddy" },
      ["<leader>l"] = { name = "+LSP" },
	  -- ["<leader>lk"] = { "<cmd>vim.diagnostic.goto_prev<cr>", "Prev Diagnostic" },
	  -- ["<leader>lj"] = { "<cmd>vim.diagnostic.goto_next<cr>", "Next Diagnostic" },
	  -- ["<leader>lf"] = { "<cmd>vim.lsp.buf.format<cr>", "Format" },
      ["<leader>c"] = { "<cmd>bdelete<cr>", "Close Tab" },
      ["<leader>e"] = { "<cmd>Neotree toggle<CR>", "Explorer"},
    })
	end,
}
