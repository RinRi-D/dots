local g = vim.g
local o = vim.o
local api = vim.api
local opt = vim.opt
local cmd = vim.cmd
local home = os.getenv('HOME')

-- Decrease update time
o.timeoutlen = 500
o.updatetime = 200

-- Number of screen lines to keep above and below the cursor
o.scrolloff = 8

o.number = true
o.relativenumber = true
o.signcolumn = 'yes:1'

o.expandtab = true
-- o.smarttab = true
o.cindent = true
-- o.autoindent = true

o.wrap = false
o.textwidth = 300
o.tabstop = 4
o.shiftwidth = 0
o.softtabstop = -1 -- If negative, shiftwidth value is used
o.list = true
o.listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂'

-- OS clipboard
o.clipboard = 'unnamedplus'

-- Mouse in all modes
opt.mouse = 'a'

-- Case insensitive searching UNLESS /C or capital in search
o.ignorecase = true
o.smartcase = true

o.backup = false
o.writebackup = false
o.undofile = true
o.undodir = home .. '/.vim/undodir'
o.swapfile = false

o.splitright = true
o.splitbelow = true

g.lightline = {colorscheme = 'onedark'}

g.mapleader = ' '
g.maplocalleader = ' '

o.termguicolors = true

api.nvim_create_autocmd('ColorScheme', {
    command = [[
    highlight clear CursorLine
    highlight Normal ctermbg=none
    highlight Normal guibg=none
    highlight LineNr ctermbg=none
    highlight LineNr guibg=none
    highlight Folded ctermbg=none
    highlight Folded guibg=none
    highlight NonText ctermbg=none
    highlight NonText guibg=none
    highlight SpecialKey ctermbg=none
    highlight SpecialKey guibg=none
    highlight VertSplit ctermbg=none
    highlight VertSplit guibg=none
    highlight SignColumn ctermbg=none
    highlight SignColumn guibg=none
    ]]
})
cmd('colorscheme onedark')

-- BUG: this won't update the search count after pressing `n` or `N`
-- When running macros and regexes on a large file, lazy redraw tells neovim/vim not to draw the screen
-- o.lazyredraw = true
