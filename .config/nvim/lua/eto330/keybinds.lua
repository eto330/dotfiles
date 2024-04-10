local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = false })
end

-- Fix n and N. Keeping foobar in center
--
--
map('n', 'n', 'nzz')
map('n', 'N', 'Nzz')
map('n','<leader>w', ':w<CR>')
map('n','<leader>q', ':q!<CR>')
map('n','<leader>h', ':wincmd h<CR>')
map('n','<leader>j', ':wincmd j<CR>')
map('n','<leader>k', ':wincmd k<CR>')
map('n','<leader>l', ':wincmd l<CR>')
map('n','<leader>gg', ':G<CR>')
map('n','<leader>gc', ':G commit<CR>')
map('n','<leader>gp', ':G push<CR>')
map('n','<C-s>', ':Ex<CR>')
map('n','m', '')
map('n',"'", "'")

map('v','J', ":m '>+1<CR>gv=gv")
map('v','K', ":m '>-2<CR>gv=gv")

require('Comment').setup({
    ignore = '^$',
    opleader = {
        line = '<leader>x',
    },
})


vim.keymap.set('i', '<C-l>', function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
vim.keymap.set('i', '<C-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
vim.keymap.set('i', '<C-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
vim.keymap.set('i', '<C-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
