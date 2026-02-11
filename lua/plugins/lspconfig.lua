return {
	"neovim/nvim-lspconfig",
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		local lspconfig = require("lspconfig")
		local util = require("lspconfig.util")

		lspconfig.lua_ls.setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})

		lspconfig.omnisharp.setup({
			on_attach = on_attach,
			capabilities = capabilities,
			--cmd = { os.getenv("HOME") .. "/.local/share/nvim/mason/bin/csharp-ls" },
			cmd = { os.getenv("HOME") .. "/.local/share/nvim/mason/bin/OmniSharp" },
			root_dir = util.root_pattern("*sln", "*.csproj", ".git"),
		})

		lspconfig.ts_ls.setup({
			on_attach = on_attach,
			capabilities = capabilities,
			cmd = { "typescript-language-server", "--stdio" },
			filetypes = {
				"typescript",
				"typescriptreact",
				"javascript",
				"javascriptreact",
			},
			root_dir = lspconfig.util.root_pattern("tsconfig.json", "package.json", "jsconfig.json", ".git"),
			settings = {
				typescript = {
					inlayHints = {
						includeInlayParameterNameHints = "all",
						includeInlayFunctionParameterTypeHints = true,
						includeInlayVariableTypeHints = true,
						includeInlayPropertyDeclarationTypeHints = true,
						includeInlayFunctionLikeReturnTypeHints = true,
					},
				},
				javascript = {
					inlayHints = {
						includeInlayParameterNameHints = "all",
						includeInlayFunctionParameterTypeHints = true,
						includeInlayVariableTypeHints = true,
						includeInlayPropertyDeclarationTypeHints = true,
						includeInlayFunctionLikeReturnTypeHints = true,
					},
				},
			},
		})

		lspconfig.eslint.setup({
			on_attach = on_attach,
			capabilities = capabilities,
			root_dir = lspconfig.util.root_pattern(
				".eslintrc",
				".eslintrc.js",
				".eslintrc.json",
				"package.json",
				".git"
			),
		})

		lspconfig.emmet_ls.setup({
			on_attach = on_attach,
			capabilities = capabilities,
			filetypes = {
				"html",
				"css",
				"scss",
				"javascriptreact",
				"typescriptreact",
			},
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
