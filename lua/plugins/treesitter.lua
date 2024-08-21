return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = { "go", "lua", "html", "typescript" },
			highlight = { enable = true },
			indent = { enable = true },
			perser = {
				html = {
					enable = true
				}
			}
		})
	end
}
