local packages = require("list.package")

vim.pack.add(packages)

for _, package in ipairs(packages) do
	pcall(require, "package." .. package.name)
end

local registry = require("mason-registry")

for _, mason_package in ipairs(require("list.mason")) do
	local package = registry.get_package(mason_package)

	if not package:is_installed() then
		package:install()
	end
end
