vim.g.mapleader = " "

vim.keymap.set({'n', 'i'}, '<D-s>', "<Esc>:w<CR>") -- save files
vim.keymap.set({'i'}, 'D-g', '<Esc>:u[ndo]<CR>i' )

vim.keymap.set("n", "s", "") -- disabled S-Insert 
vim.keymap.set("n", "sv", "<C-w>v") -- split window vertically
vim.keymap.set("n", "sh", "<C-w>s") -- split window horizontally
vim.keymap.set("n", "se", "<C-w>=") -- make split window equal width
vim.keymap.set("n", "sx", ":close<CR>") -- close current split window
vim.keymap.set("n", "sm", ":MaximizerToggle<CR>") -- maximize current split window

vim.keymap.set("n", "t", "") -- disabled t action
vim.keymap.set("n", "to", ":tabnew<CR>") -- open new tab
vim.keymap.set("n", "tx", ":tabclose<CR>") -- close current tab
vim.keymap.set("n", "tn", ":tabn<CR>") -- go to next tab
vim.keymap.set("n", "tp", ":tabp<CR>") -- go to previous tab

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle nvim tree

local telescope_builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>p", telescope_builtin.find_files)
vim.keymap.set("n", "<leader>g", telescope_builtin.live_grep)
vim.keymap.set("n", "<leader>s", telescope_builtin.grep_string)
