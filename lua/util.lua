local M = {}

function M.load_keymap(keybinds, buf)
	for _, keybind in ipairs(keybinds) do
		local opts = keybind.opts or {}

		if buf then
			opts = vim.tbl_extend("force", keybind.opts, { buffer = buf })
		end

		vim.keymap.set(keybind.mode, keybind.mapping, keybind.func, opts)
	end
end

function M.load_autocmd(auto_cmds)
	for _, auto_cmd in ipairs(auto_cmds) do
		require("autocmd." .. auto_cmd)
	end
end

return M
