local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = vim.tbl_deep_extend("force", capabilities, require("blink.cmp").get_lsp_capabilities({}, true))

vim.lsp.config("*", {
	capabilities = capabilities,
})

local function has_lsp_config(server_name)
	local config_path = vim.fn.stdpath("config")
	local server_file = server_name .. ".lua"
	local target_path = vim.fs.joinpath(config_path, "lsp", server_file)

	return vim.uv.fs_stat(target_path)
end

for _, lsp_server in ipairs(require("list.lsp")) do
	if has_lsp_config(lsp_server) then
		vim.lsp.enable(lsp_server)
	else
		vim.notify(("Missing LSP config for %s."):format(lsp_server), vim.log.levels.WARN)
	end
end
