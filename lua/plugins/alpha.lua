		return {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
		-- local dashboard = require'alpha'.setup(require'alpha.themes.dashboard'.config)
		local status_ok, alpha = pcall(require, "alpha")
		if not status_ok then
			return
		end
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
				[[                     ▀████▀▄▄              ▄█ ]],
			[[                       █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
			[[               ▄        █          ▀▀▀▀▄  ▄▀  ]],
			[[              ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
			[[             ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
			[[             ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
			[[              ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
			[[               █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
			[[              █   █  █      ▄▄           ▄▀   ]],
			[[ ===================================================== ]],
			[[ ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗]],
			[[ ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║]],
			[[ ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║]],
			[[ ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]],
			[[ ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║]],
			[[ ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝]],
		}
		dashboard.section.buttons.val = {
		  dashboard.button("f", "   File Browser", ":Telescope find_files <CR>"),
		  dashboard.button("n", "   New File", ":ene <BAR> startinsert <CR>"),
		  dashboard.button("p", "   Find Project", ":Telescope projects <CR>"),
		  dashboard.button("r", "   Recently Files", ":Telescope oldfiles <CR>"),
		  dashboard.button("t", "   Find Text", ":Telescope live_grep <CR>"),
		  --dashboard.button("u", "   Update Plugins", ":PackerUpdate <CR>"),
		  --dashboard.button("<leader>ip", "   Add/Remove Plugins", ":e ~/.config/nvim/lua/core/plugins.lua<CR>"),
		  --dashboard.button("<leader>c", "   Configuration", ":e ~/.config/nvim/lua/config.lua <CR>"),
		  dashboard.button("q", "   Quit Neovim", ":qa<CR>"),
		}

		local function footer()
			return "Don't stop until this ** crashes"
		end

		dashboard.section.footer.val = footer()

		dashboard.section.footer.opts.hl = "Type"
		dashboard.section.header.opts.hl = "Include"
		dashboard.section.buttons.opts.hl = "Keyword"

		dashboard.opts.opts.noautocmd = true
		alpha.setup(dashboard.opts)
    end
}
