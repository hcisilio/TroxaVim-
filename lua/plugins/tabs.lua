return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    vim.opt.termguicolors = true
    local bufferline = require('bufferline')
    bufferline.setup{
      options = {
        mode = "buffers",
        style_preset = bufferline.style_preset.default,
        close_command = "bdelete! %d",
        buffer_close_icon = '󰅖',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        color_icons = true
      }
    }
    -- tabs navigation
    vim.keymap.set('n', '<C-n>', ':BufferLineCycleNext<CR>', {})
    vim.keymap.set('n', '<C-b>', ':BufferLineCyclePrev<CR>', {})
    vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', {})
    vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', {})
    vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', {})
    vim.keymap.set('n', '<leader>c', ':bdelete<CR>', {})
    --
  end
}
