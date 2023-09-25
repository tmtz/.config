-- additional plugins
reload "user.plugins"
reload "user.options"
reload "user.keymaps"
reload "user.autocommands"
reload "user.lsp"
reload "user.treesitter"
reload "user.copilot"
reload "user.telescope"
reload "user.fidget"
reload "user.whichkey"
reload "user.inlay-hints"
reload "user.functions"
reload "user.dial"
reload "user.dap"
-- Butch added these lines:
lvim.format_on_save.enabled=true
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "eslint", filetypes = { "typescript", "typescriptreact" } }
}
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = "prettier",
    filetypes = { "typescript", "typescriptreact" },
  },
}

-- reload "user.chatgpt"
-- reload "user.neoai"

-- start in insert-mode
-- lvim.keys.normal_mode["<CR>"] = "<cmd>startinsert<CR>"
-- local autocmds = {}
-- table.insert(autocmds, {"BufEnter", "*", "startinsert"})
