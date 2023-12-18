local opt = vim.opt

vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.cursorline = true

-- vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.backspace = "indent,eol,start"

vim.opt.clipboard:append("unnamedplus")

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

vim.opt.iskeyword:append("-")

-- Curly Braces {}
vim.api.nvim_set_keymap('i', '{', '{}<Left>', { noremap = true })
vim.api.nvim_set_keymap('i', '{<CR>', '{<CR>}<Esc>O', { noremap = true })
vim.api.nvim_set_keymap('i', '{{', '{{<Esc>O', { noremap = true })
vim.api.nvim_set_keymap('i', '{}', '{}<Left>', { noremap = true })

-- Parentheses ()
vim.api.nvim_set_keymap('i', '(', '()<Left>', { noremap = true })
vim.api.nvim_set_keymap('i', '()<CR>', '()<CR>)<Esc>O', { noremap = true })
vim.api.nvim_set_keymap('i', '((', '((', { noremap = true })
vim.api.nvim_set_keymap('i', '()', '()', { noremap = true })

-- Square Brackets []
vim.api.nvim_set_keymap('i', '[', '[]<Left>', { noremap = true })
vim.api.nvim_set_keymap('i', '[<CR>', '[<CR>]<Esc>O', { noremap = true })
vim.api.nvim_set_keymap('i', '[[', '[[', { noremap = true })
vim.api.nvim_set_keymap('i', '[]', '[]', { noremap = true })

-- Single Quotes ''
vim.api.nvim_set_keymap('i', "'", "''<Left>", { noremap = true })
vim.api.nvim_set_keymap('i', "''<CR>", "''<CR>", { noremap = true })
vim.api.nvim_set_keymap('i', "''", "''", { noremap = true })

-- Double Quotes ""
vim.api.nvim_set_keymap('i', '"', '""<Left>', { noremap = true })
vim.api.nvim_set_keymap('i', '""<CR>', '""<CR>', { noremap = true })
vim.api.nvim_set_keymap('i', '""', '""', { noremap = true })

vim.api.nvim_exec([[
  " C++ mappings
  autocmd FileType cpp nnoremap <buffer><F9> :w <bar> :term g++ -std=c++14 %:p -o %:p:r<CR>:startinsert<CR>
  autocmd FileType cpp nnoremap <buffer><F10> :w <bar> :term %:p:r && rm %:p:r<CR>:startinsert<CR>
  autocmd FileType cpp nnoremap <buffer><C-C> :s/^\(\s*\)/\1\/\/<CR> :s/^\(\s*\)\/\/\/\//\1<CR>

  " Python mappings
  autocmd FileType python nnoremap <buffer><F9> :w <bar> :term python3 %:p<CR>:startinsert<CR>
  autocmd FileType python nnoremap <buffer><C-C> :s/^\(\s*\)/\1#<CR> :s/^\(\s*\)###/\1<CR>

  " Java mappings
  autocmd FileType java nnoremap <buffer><F9> :w <bar> :term javac %:p && java %:p:r && rm %:p:r.class<CR>:startinsert<CR>
  autocmd FileType java nnoremap <buffer><F10> :w <bar> :term java %:p:r && rm %:p:r.class<CR>:startinsert<CR>
  autocmd FileType java nnoremap <buffer><C-C> :s/^\(\s*\)/\1\/\/<CR> :s/^\(\s*\)\/\/\/\//\1<CR>
]], false)
