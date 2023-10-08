-- Map <leader>n to :NERDTreeFocus<CR>
vim.api.nvim_set_keymap('n', '<leader>n', ':NERDTreeFocus<CR>', { noremap = true, silent = true })

-- Map <C-n> to :NERDTree<CR>
vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTree<CR>', { noremap = true, silent = true })

-- Map <C-t> to :NERDTreeToggle<CR>
vim.api.nvim_set_keymap('n', '<C-m>', ':NERDTreeToggle<CR>', { noremap = true, silent = true })

-- Map <C-f> to :NERDTreeFind<CR>
vim.api.nvim_set_keymap('n', '<C-,>', ':NERDTreeFind<CR>', { noremap = true, silent = true })

