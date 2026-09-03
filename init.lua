require("config")
require("install")
require("lsp")

local util = require("util")

-- keymaps
util.load_keymap(require("list.keymap.nvim"), 0)
util.load_keymap(require("list.keymap.fzf"))
util.load_keymap(require("list.keymap.claudecode"))

util.load_autocmd(require("list.autocmd"))
