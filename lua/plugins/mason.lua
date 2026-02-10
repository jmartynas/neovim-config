return {
	"williamboman/mason.nvim",
	config = function()
		require("mason").setup({
			ensure_installed = { "lua-language-server" },
			automatic_installation = true,
		})
	end
}
