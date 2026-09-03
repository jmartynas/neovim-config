local package = require("conform")

package.setup({
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},

	formatters_by_ft = {
		lua = { "stylua" },
		go = { "golangci-lint", "goimports-reviser", "gofumpt", "golines" },
	},
})
