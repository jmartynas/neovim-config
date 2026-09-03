local package = require("nvim-treesitter")

local parsers = require("list.parser")

package.install(parsers)

package.setup({})
