local g = vim.g
local o = vim.o

vim.api.nvim_command([[
  augroup ChangeBackgroudColour
  autocmd colorscheme * :hi normal guibg=None
  augroup END
]])

vim.api.nvim_command('let g:vim_be_good_delete_me_offset = 35')
-- cmd('syntax on')
-- vim.api.nvim_command('filetype plugin indent on')
o.termguicolors = true
-- o.background = 'dark'

--vim.api.nvim_command('set colorcolumn=85')
-- Do not save when switching buffers
-- o.hidden = true

-- Decrease update time
o.timeoutlen = 500
o.updatetime = 200
-- Number of screen lines to keep above and below the cursor
o.scrolloff = 8 

-- Better editor UI
o.number = true
o.numberwidth = 5
o.relativenumber = true
o.signcolumn = 'yes:2'
o.cursorline = true
vim.o.magic = 'very'
vim.g.magic = 'very'
-- Better editing experience
o.expandtab = true
o.smarttab = true
o.cindent = true
o.autoindent = true
o.wrap = true
o.textwidth = 300
o.tabstop = 4
o.shiftwidth = 0
o.softtabstop = -1 -- If negative, shiftwidth value is used
o.list = true
o.listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂'
-- o.listchars = 'eol:¬,space:·,lead: ,trail:·,nbsp:◇,tab:→-,extends:▸,precedes:◂,multispace:···⬝,leadmultispace:│   ,'
-- o.formatoptions = 'qrn1'

-- Makes neovim and host OS clipboard play nicely with each other
o.clipboard = 'unnamedplus'

-- Case insensitive searching UNLESS /C or capital in search
o.ignorecase = true
o.smartcase = true
g.colorcolumn = true

-- Undo and backup options
o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false
-- o.backupdir = '/tmp/'
-- o.directory = '/tmp/'
-- o.undodir = '/tmp/'

-- Remember 50 items in commandline history
o.history = 50

vim.cmd.colorscheme('sunset_cloud')
vim.api.nvim_command('highlight Search guifg=black guibg=yellow')
g.netrw_banner = 0
g.netrw_liststyle = 3
g.netrw_browse_split = 4
g.netrw_altv = 1
g.netrw_winsize = 12
-- Better buffer splitting
o.splitright = true
o.splitbelow = true 
vim.g.do_filetype_lua = 1
g.mapleader = ' '
g.maplocalleader = ' '
vim.api.nvim_command('hi Comment guifg=#859900')
