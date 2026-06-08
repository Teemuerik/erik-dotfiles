local map = vim.keymap.set

map("n", "<leader>ff", Snacks.picker.smart, { desc = "Smart find file" })
map("n", "<leader>fb", Snacks.picker.buffers, { desc = "Find buffers" })
map("n", "<leader>fg", Snacks.picker.git_files, { desc = "Find git" })
map("n", "<leader>fr", Snacks.picker.recent, { desc = "Find recent" })

map("n", "<leader>g", Snacks.picker.grep, { desc = "Grep" })
map("n", "<leader>e", Snacks.picker.explorer, { desc = "File explorer" })
