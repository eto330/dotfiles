local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = false })
end

-- Fix n and N. Keeping cursor in center
--
map('n', 'n', 'nzz')
map('n', 'N', 'Nzz')
map('n', '<leader>n', '<CMD>tabNext<CR>')
map('n', '<leader>x', ':Ex<CR>')
map('n', '<leader>w', '<CMD>w<CR>')
map('n', '<leader>q', '<CMD>q!<CR>')
map('n', '<leader>m', '<CMD>!make<CR>')
map('n','<leader>h', ':wincmd h<CR>')
map('n','<leader>j', ':wincmd j<CR>')
map('n','<leader>k', ':wincmd k<CR>')
map('n','<leader>l', ':wincmd l<cr>')
map('n','m', '')
map('n',"'", "'")

map('v','J', ":m '>+1<CR>gv=gv")
map('v','K', ":m '>-2<CR>gv=gv")

vim.api.nvim_command('abbreviate any .{-}')
vim.api.nvim_command('nnoremap m <Nop>')

