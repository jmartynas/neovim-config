local github = function(repo)
	return "https://github.com/" .. repo
end

return {
	{
		name = "nvim-web-devicons",
		src = github("nvim-tree/nvim-web-devicons"),
		version = "master",
	},
	{
		name = "nvim-treesitter",
		src = github("nvim-treesitter/nvim-treesitter"),
		version = "main",
	},
	{
		name = "mason",
		src = github("mason-org/mason.nvim"),
		version = "main",
	},
	{
		name = "mason-registry",
		src = github("mason-org/mason-registry"),
		version = "main",
	},
	{
		name = "friendly-snippets",
		src = github("rafamadriz/friendly-snippets"),
		version = "main",
	},
	{
		name = "blink-cmp",
		src = github("saghen/blink.cmp"),
		version = "v1.10.2",
	},
	{
		name = "fzf-lua",
		src = github("ibhagwan/fzf-lua"),
		version = "main",
	},
	{
		name = "conform",
		src = github("stevearc/conform.nvim"),
		version = "master",
	},
	{
		name = "claudecode",
		src = github("coder/claudecode.nvim"),
		version = "main",
	},
}
