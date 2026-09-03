return {
	{
		mode = "n",
		mapping = "<leader>co",
		func = function()
			vim.cmd("ClaudeCode")
		end,
		opts = {},
	},
	{
		mode = "n",
		mapping = "<leader>cf",
		func = function()
			vim.cmd("ClaudeCodeFocus")
		end,
		opts = {},
	},
	{
		mode = "n",
		mapping = "<leader>cr",
		func = function()
			vim.cmd("ClaudeCode --resume")
		end,
		opts = {},
	},
	{
		mode = "n",
		mapping = "<leader>cc",
		func = function()
			vim.cmd("ClaudeCode --continue")
		end,
		opts = {},
	},
	{
		mode = "n",
		mapping = "<leader>cm",
		func = function()
			vim.cmd("ClaudeCodeSelectModel")
		end,
		opts = {},
	},
	{
		mode = "n",
		mapping = "<leader>cb",
		func = function()
			vim.cmd("ClaudeCodeAdd %")
		end,
		opts = {},
	},
	{
		mode = "v",
		mapping = "<leader>cs",
		func = function()
			vim.cmd("ClaudeCodeSend")
		end,
		opts = {},
	},
	{
		mode = "n",
		mapping = "<leader>cv",
		func = function()
			vim.cmd("ClaudeCodeDiffAccept")
		end,
		opts = {},
	},
	{
		mode = "n",
		mapping = "<leader>cx",
		func = function()
			vim.cmd("ClaudeCodeDiffDeny")
		end,
		opts = {},
	},
}