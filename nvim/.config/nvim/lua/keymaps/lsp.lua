-- keymaps/lsp.lua
local map = vim.keymap.set

map("n", "<leader>ld", vim.diagnostic.open_float, { desc = "Line diagnostics" })
