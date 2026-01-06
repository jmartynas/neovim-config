return {
	"neovim/nvim-lspconfig",
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		local lspconfig = require("lspconfig")

		lspconfig.lua_ls.setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})

		lspconfig.csharp_ls.setup({
			cmd = { "csharp-ls" },
			filetypes = { "cs", "vb", "aspx", "asp" },
			root_dir = lspconfig.util.root_pattern(".git", "project.json", "AssemblyInfo.cs"),
			settings = {
				-- Add any csharp-language-server specific settings here
			},
		})

		lspconfig.texlab.setup({
			on_attach = on_attach,
			capabilities = capabilities, -- typo fixed
			filetypes = { "tex", "plaintex", "bib" },
			settings = { -- texlab-specific settings go under "settings"
				texlab = {
					build = {
						executable = "latexmk",
						args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
						forwardSearchAfter = false,
						onSave = true,
					},
					chktex = {
						onEdit = false,
						onOpenAndSave = false,
					},
					diagnosticsDelay = 300,
					formatterLineLength = 80,
					forwardSearch = { -- typo fixed ("forwardSerach" -> "forwardSearch")
						args = {},
					},
					latexFormatter = "latexindent", -- typo fixed ("latextFormatter" -> "latexFormatter")
					latexindent = { -- typo fixed ("latextindent" -> "latexindent")
						modifyLineBreaks = false,
					},
				},
			},
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

		lspconfig.terraformls.setup({
			on_attach = on_attach,
			capabilities = capabilities,
			filetypes = { "terraform" },
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
