local package = require("claudecode")

package.setup({
	auto_start = true,
	log_level = "info",
	terminal_cmd = nil,

	focus_after_send = false,
	track_selection = true,
	visual_demotion_delay_ms = 50,

	terminal = {
		split_side = "right",
		split_width_percentage = 0.2,
		diff_split_width_percentage = 0.4,
		provider = "auto",
		auto_close = true,
		auto_insert = true,
		snacks_win_opts = {},
		fix_streamed_paste = "auto",

		provider_opts = {
			external_terminal_cmd = nil,
		},
	},

	diff_opts = {
		layout = "vertical",
		open_in_new_tab = false,
		keep_termanl_focus = false,
		hide_terminal_in_new_tab = false,
		auto_resize_terminal = true,
	},

	keys = {
		{ "<leader>c", nil, desc = "" },
		{ "<leader>co", "<cmd>ClaudeCode<cr>", desc = "" },
		{ "<leader>cf", "<cmd>ClaudeCodeFocus<cr>", desc = "" },
		{ "<leader>cr", "<cmd>ClaudeCode --resume<cr>", desc = "" },
		{ "<leader>cc", "<cmd>ClaudeCode --continue<cr>", desc = "" },
		{ "<leader>cm", "<cmd>ClaudeCodeSelectModel<cr>", desc = "" },
		{ "<leader>cb", "<cmd>ClaudeCodeAdd %<cr>", desc = "" },
		{ "<leader>cs", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "" },
		{
			"<leader>cs",
			"<cmd>ClaudeCodeTreeAdd<cr>",
			desc = "",
			ft = {
				"NvimTree",
				"new-tree",
				"oil",
				"minifiles",
				"netrw",
				"snacks_picker_list",
			},
		},
		{ "<leader>cv", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "" },
		{ "<leader>cx", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "" },
	},
})
