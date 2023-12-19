return {
  "ahmedkhalf/project.nvim",
  config = function()
    require('telescope').load_extension('projects')
    require("project_nvim").setup {
      detection_methods = { "pattern", "lsp" },
      patterns = { ".git", }
    }
  end
}
