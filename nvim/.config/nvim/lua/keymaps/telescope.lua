-- keymaps/telescope.lua
local map = vim.keymap.set
local builtin = require('telescope.builtin')

map('n', '<leader>ff', function()
    local dir = vim.fn.argv(0)
    if dir ~= "" and vim.fn.isdirectory(dir) == 1 then
        builtin.find_files({ cwd = dir })
    else
        builtin.find_files()
    end
end, { desc = 'Telescope find files' })
map('n', '<leader>fg', function()
    local dir = vim.fn.argv(0)
    if dir ~= "" and vim.fn.isdirectory(dir) == 1 then
        builtin.live_grep({ cwd = dir })
    else
        builtin.live_grep()
    end
end, { desc = 'Telescope live grep' })
map('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
map('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
