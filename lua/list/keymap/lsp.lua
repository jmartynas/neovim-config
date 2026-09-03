return {
	{
		mode = "n",
		mapping = "gd",
		func = vim.lsp.buf.definition,
		opts = {},
	},
	{
		mode = "n",
		mapping = "<leader>rn",
		func = vim.lsp.buf.rename,
		opts = {},
	},
	{
		mode = "n",
		mapping = "<leader>hh",
		func = vim.lsp.buf.hover,
		opts = { silent = true },
	},
}
