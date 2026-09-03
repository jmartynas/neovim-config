return {
	{
		mode = "n",
		mapping = "<leader>gn",
		func = function()
			vim.diagnostic.jump({ count = 1 })
		end,
		opts = {},
	},
	{
		mode = "n",
		mapping = "<leader>gp",
		func = function()
			vim.diagnostic.jump({ count = -1 })
		end,
		opts = {},
	},
}
