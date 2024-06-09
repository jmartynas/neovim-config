return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
		vim.keymap.set("n", "<leader>gg", builtin.git_files, {})
		vim.keymap.set("n", "<leader>dd", builtin.live_grep, {})
		vim.keymap.set("n", "<leader>aa", function() builtin.grep_string({ search = vim.fn.input("Grep > ")}) end)
		vim.keymap.set("n", "<leader>ll", function() builtin.lsp_references({ include_declaration = false }, { include_current_line = true }) end)
		--vim.keymap.set("n", "<leader>rr", builtin.lsp_incoming_calls, {})
		--vim.keymap.set("n", "<leader>ee", builtin.lsp_outgoing_calls, {})
	end,
}
