-- Enable colors.
vim.opt.termguicolors = true

-- Set the leader character.
vim.g.mapleader = "<Space>"

-- Set the clipboard to use the system clipboard.
vim.opt.clipboard = "unnamedplus"

-- Require modules.
require("config.lazy")

-- Load keymaps.
require("config.load_keymaps")

-- Load orgmode config.
require("config.org_config")

-- Use relative line numbers.
vim.wo.number = true
vim.wo.relativenumber = true

-- Set default indentation.
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Create an augroup for file-specific indentation.
vim.api.nvim_create_augroup("IndentSettings", { clear = true })

-- Set indent to 2 spaces for certain file types.
vim.api.nvim_create_autocmd("FileType", {
    group = "IndentSettings",
    pattern = { "html" },
    callback = function()
        vim.opt_local.tabstop = 2
	vim.opt_local.shiftwidth = 2
	vim.opt_local.expandtab = true
    end
})

-- Set transparent background.
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
vim.api.nvim_set_hl(0, "Pmenu", { bg = "none" })

vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
        vim.api.nvim_set_hl(0, "Pmenu", { bg = "none" })
    end,
})
