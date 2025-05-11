return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup({
      options = {
        -- theme = 'Onedark'
        theme = 'lunar'
      },
	  sections = {
		lualine_a = {'mode'},
		lualine_b = {
      'filename',
      'branch',
      {
        "diff",
        symbols = {
          added = " ",
          modified = " ",
          removed = " ",
        },
        source = function()
          local gitsigns = vim.b.gitsigns_status_dict
          if gitsigns then
            return {
              added = gitsigns.added,
              modified = gitsigns.changed,
              removed = gitsigns.removed,
            }
          end
        end,
      }
    },
		lualine_c = {
			{
				-- Lsp server name .
				function()
					local msg = 'No Active Lsp'
					local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
					local clients = vim.lsp.get_clients()
					if next(clients) == nil then
					  return msg
					end
					for _, client in ipairs(clients) do
					  local filetypes = client.config.filetypes
					  if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
						return client.name
					  end
					end
					return msg
				end,
				icon = ' ',
				color = { fg = '#ffffff', gui = 'bold' },
			},
			'diagnostics', 
		},
		lualine_x = {'encoding', 'fileformat', 'filetype'},
		lualine_y = {'progress', 'location'},
		lualine_z = {
			{
			function()
			  return os.date("%R") .. "  "
			end,
			},
		},
	  },
    })
  end
}
