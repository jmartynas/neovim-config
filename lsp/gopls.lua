return {
	cmd = { "gopls" },
	filetypes = { "go", "gomod", "gowork", "gotmpl" },
	root_markers = { "go.work", "go.mod", ".git" },
	settings = {
		gopls = {
			gofumpt = true,
			staticcheck = true,
			verboseOutput = true,
			completeUnimported = true,

			analyses = {
				fieldalignment = true,
				nilness = true,
				unusedparams = true,
				unusedwrite = true,
			},

			hints = {
				constantValues = true,
				parameterNames = true,
				assignVariableType = true,
				compositeLiteralTypes = true,
				compositeLiteralFields = true,
				functionTypeParameters = true,
			},
		},
	},
}
