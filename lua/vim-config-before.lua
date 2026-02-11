vim.g.mapleader = " "

vim.keymap.set("n", "<leader>ss", function()
	vim.cmd(":Ex")
end)

vim.o.number = true
vim.o.relativenumber = true

vim.opt.autoread = true

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.go",
	callback = function()
		local params = vim.lsp.util.make_range_params()
		params.context = { only = { "source.organizeImports" } }
		-- buf_request_sync defaults to a 1000ms timeout. Depending on your
		-- machine and codebase, you may want longer. Add an additional
		-- argument after params if you find that you have to write the file
		-- twice for changes to be saved.
		-- E.g., vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, 3000) local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params)
		for cid, res in pairs(result or {}) do
			for _, r in pairs(res.result or {}) do
				if r.edit then
					local enc = (vim.lsp.get_client_by_id(cid) or {}).offset_encoding or "utf-16"
					vim.lsp.util.apply_workspace_edit(r.edit, enc)
				end
			end
		end
		vim.lsp.buf.format({ async = false })
	end,
})

--vim.api.nvim_create_autocmd("VimLeavePre", {
--	pattern = "*",
--	callback = function()
--		local cwd = vim.fn.getcwd()
--		if vim.fn.glob(cwd .. "/*.sln") ~= "" or vim.fn.glob(cwd .. "/*.csproj") ~= "" then
--			print("Formatting .NET project...")
--			os.execute("dotnet format " .. cwd)
--		end
--	end
--})

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.diagnostic.config({
	virtual_text = {
		prefix = "●", -- Change to "" for no symbol
		spacing = 2,
		format = function(diagnostic)
			return string.format("%s", diagnostic.message) -- Show only the message
		end,
	},
	signs = true, -- Keep signs in the gutter
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})
