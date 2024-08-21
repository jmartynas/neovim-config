return {
	--"rose-pine/neovim",
	"neanias/everforest-nvim",
	config = function()
		--[[
		local config = require("rose-pine")
		config.setup({
			styles = {
				transparency = true,
			}
		})
		vim.cmd.colorscheme("rose-pine")
		--]]
		local config = require("everforest")
		config.setup({
				background = "hard",
				transparent_background_level = 2,
		})
		config.load()
	end,
}
