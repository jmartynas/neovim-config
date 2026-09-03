local fzf = require("fzf-lua")

return {
	{
		mode = "n",
		mapping = "<leader>sf",
		func = function()
			require("fzf-lua").files()
		end,
		opts = { silent = true },
	},
	{
		mode = "n",
		mapping = "<leader>st",
		func = function()
			fzf.live_grep()
		end,
		opts = { silent = true },
	},
	{
		mode = { "n", "i" },
		mapping = "<C-c><C-f>",
		func = function()
			fzf.complete_file()
		end,
		opts = { silent = true },
	},
}
