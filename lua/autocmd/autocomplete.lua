vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("lsp_completion", { clear = true }),
	callback = function(args)
		local client_id = args.data.client_id
		if not client_id then
			return
		end

		local client = vim.lsp.get_client_by_id(client_id)
		if not client then
			return
		end

		vim.bo[args.buf].omnifunc = nil
		require("util").load_keymap(require("list.keymap.lsp"), args.buf)
	end,
})
