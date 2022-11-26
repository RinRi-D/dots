local function map(kind, lhs, rhs, opts)
  vim.api.nvim_set_keymap(kind, lhs, rhs, opts)
end

local sn = {noremap = true, silent = true}

-- Brackets
map('i', '\"', '\"\"<left>', sn)
map('i', '\'', '\'\'<left>', sn)
map('i', '(', '()<left>', sn)
map('i', '[', '[]<left>', sn)
map('i', '{', '{}<left>', sn)
map('i', '{<CR>', '{<CR>}<ESC>O', sn)
map('i', '{;<CR>', '{<CR>};<ESC>O', sn)

-- Spell check toggle
map('n', '<F11>', ':set spell!<CR>', sn)
map('i', '<F11>', '<C-O>:set spell!<CR>', sn)

-- Identation
map('v', '<', '<gv', sn)
map('v', '>', '>gv', sn)

-- Split navigation
map('n', '<C-h>', '<C-w>h', sn)
map('n', '<C-j>', '<C-w>j', sn)
map('n', '<C-k>', '<C-w>k', sn)
map('n', '<C-l>', '<C-w>l', sn)

-- Run Make
map('n', '<Leader>c', ':w! | !make <CR>', sn)
map('n', '<Leader>n', ':NERDTreeToggle<CR>', sn)

map('n', '<Leader>l', ':Limelight!! 0.5 <CR>', sn)
