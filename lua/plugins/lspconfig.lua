return {
	"neovim/nvim-lspconfig",
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		local lspconfig = require("lspconfig")
		lspconfig.lua_ls.setup({
			capabilities = capabilities,
		})

		lspconfig.gopls.setup({
			on_attach = on_attach,
			capabilities = capabilities,
			cmd = { "gopls" },
			filetypes = { "go", "gomod", "gowork", "gotmpl" },
			root_dir = require("lspconfig/util").root_pattern("go.work", "go.mod", ".git"),
			settings = {
				gopls = {
					completeUnimported = true,
					analyses = {
						unusedparams = true,
					},
				},
			},
		})

		lspconfig.dartls.setup({
			capabilities = capabilities,
		})

		vim.keymap.set("n", "<leader>kk", vim.lsp.buf.hover, {})
		vim.keymap.set("n", "<leader>jj", vim.lsp.buf.definition, {})
		vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		vim.keymap.set("n", "<leader>hh", vim.diagnostic.open_float, {})
		vim.keymap.set("n", "<leader>hj", vim.diagnostic.goto_next, {})
		vim.keymap.set("n", "<leader>hk", vim.diagnostic.goto_prev, {})
		vim.keymap.set("n", "<leader>;;", vim.lsp.buf.rename, {})
	end,
}
