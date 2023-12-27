return {
  "echasnovski/mini.comment",
  version = '*',
  config = function ()
    require("mini.comment").setup({
      mappings = {
        comment_line = '<leader>/',
        comment_visual = '<leader>/',
      }
    })
  end
}
