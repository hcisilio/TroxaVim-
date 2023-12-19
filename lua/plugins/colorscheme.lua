-- return {
--   {
--     "catppuccin/nvim",
--     lazy = false,
--     name = "catppuccin",
--     priority = 1000,
--     config = function()
--       vim.cmd.colorscheme "catppuccin"
--     end
--   },
-- }
return {
  {
    "LunarVim/lunar.nvim",
    lazy = false,
    name = "lunar",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "lunar"
    end
  },
}
