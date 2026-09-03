local package = require("blink.cmp")

local function next(cmp)
	if cmp.is_visible() then
		cmp.select_next()
		return true
	end
end

local function prev(cmp)
	if cmp.is_visible() then
		cmp.select_prev()
		return true
	end
end

package.setup(
	{
		keymap = {
			preset = "none",
			[ "<CR>" ] = { "accept", "fallback" },
			[ "<C-j>" ] = { next, "fallback" },
			[ "<C-k>" ] = { prev, "fallback" },
			[ "<C-x>" ] = { "cancel", "fallback" },

			[ "<C-u>" ] = { "scroll_documentation_up", "fallback" },
			[ "<C-d>" ] = { "scroll_documentation_down", "fallback" },
			[ "<C-n>" ] = { "snippet_forward", "fallback" },
			[ "<C-p>" ] = { "snippet_backward", "fallback" },
		},

		completion = {
			documentation = {
				auto_show = true,
			},

			list = {
				selection = {
					preselect = true,
					auto_insert = false,
				},
			},
		},

		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
			providers = {
				snippets = {
					opts = {
						friendly_snippets = true,
						extended_filetypes = {
							javascript = { "react" },
							markdown = { "jekyll" },
						},
					},
				},
			},
		},

		fuzzy = { implementation = "prefer_rust_with_warning" },
	}
)
