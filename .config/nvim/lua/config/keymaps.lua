local utils = require("utils")

-- kj to escape insert mode 
vim.keymap.set('i', 'kj', '<Esc>')
vim.keymap.set('v', 'kj', '<Esc>')

-- display line up/down
vim.keymap.set('n', 'gj', 'j')
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'gk', 'k')
vim.keymap.set('n', 'k', 'gk')

-- navigation in quickfix
vim.keymap.set("n", "[q", vim.cmd.cprev, { desc = "Previous quickfix" })
vim.keymap.set("n", "]q", vim.cmd.cnext, { desc = "Next quickfix" })

-- navigation in insert mode
vim.keymap.set('i', '<Up>', '<C-o>gk')
vim.keymap.set('i', '<Down>', '<C-o>gj')
vim.keymap.set('i', '<C-f>', '<Right>')
vim.keymap.set('i', '<C-b>', '<Left>')
vim.keymap.set('i', '<A-f>', '<C-o>w')
vim.keymap.set('i', '<A-b>', '<C-o>b')

-- move lines
vim.keymap.set('n', '<A-j>', '<cmd>m .+1<cr>==', { desc = "Move down" })
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- leader maps
vim.keymap.set('n', '<leader>bb', '<cmd>e#<CR>', { desc = "Edit alternate file" })

-- toggle options
vim.keymap.set('n', '<leader>gc', function() utils.toggle("cursorline") end)
vim.keymap.set('n', '<leader>gl', function() utils.toggle("list") end)
vim.keymap.set('n', '<leader>gn', function() utils.toggle("number") end)
vim.keymap.set('n', '<leader>gr', function() utils.toggle("relativenumber") end)
vim.keymap.set('n', '<leader>gs', function() utils.toggle("spell") end)
vim.keymap.set('n', '<leader>gw', function() utils.toggle("wrap") end)
vim.keymap.set('n', '<leader>ga', utils.toggle_laststatus)
vim.keymap.set('n', '<leader>gm', utils.toggle_cmdheight)
vim.keymap.set('n', '<leader>go', utils.toggle_conceallevel)

