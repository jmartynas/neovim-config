return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		local config = require("rose-pine")
		config.setup({
			styles = {
				transparency = true,
			},
		})
		vim.cmd.colorscheme("rose-pine")
		vim.cmd(":highlight Visual gui=bold guibg=#22272f")
	end,
}
