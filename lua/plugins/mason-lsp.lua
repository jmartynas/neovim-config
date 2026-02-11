return {
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	config = function()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"typescript-language-server",
				"csharp_language_server",
			},
		})
	end,
}
