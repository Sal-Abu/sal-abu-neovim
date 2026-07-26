local map = vim.keymap.set

-- Visual map
map('v', '<C-c>', 'y', { noremap = false })

-- Python Execution
map('n', '<F2>', ':w <CR>:!clear <CR>:!python3 % <CR>', { noremap = true })

-- General Normal Mode Maps
map('n', '<space>', ':', { noremap = true })
map('n', '<C-v>', 'p', { noremap = true })
map('n', '<C-c>', 'y', { noremap = true })
map('n', 'o', 'o<Esc>', { noremap = true })
map('n', 'O', 'O<Esc>', { noremap = true })
map('n', 'n', 'nzz', { noremap = true })
map('n', 'N', 'Nzz', { noremap = true })
map('n', 'j', 'gj', { noremap = true })
map('n', 'k', 'gk', { noremap = true })
map('n', 'Y', 'y$', { noremap = true })

-- Split Resize
map('n', '<C-Up>', '<C-w>+', { noremap = true })
map('n', '<C-Down>', '<C-w>-', { noremap = true })
map('n', '<C-Left>', '<C-w>>', { noremap = true })
map('n', '<C-Right>', '<C-w><', { noremap = true })
