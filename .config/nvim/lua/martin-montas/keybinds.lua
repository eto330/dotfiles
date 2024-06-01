local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = false })
end

-- Fix n and N. Keeping foobar in center
--
--
--
map('n', '<leader>w', ':w<CR>')
map('n', '<leader>q', ':q!<CR>')

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
map('n', 'n', 'nzz')
map('n', 'N', 'Nzz')

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

map('n','<leader>h', ':wincmd h<CR>')
map('n','<leader>j', ':wincmd j<CR>')
map('n','<leader>k', ':wincmd k<CR>')
map('n','<leader>l', ':wincmd l<CR>')
map('n','<leader>gg', ':G<CR>')
map('n','<leader>gc', ':G commit<CR>')
map('n','<leader>gp', ':G push<CR>')
map('n','m', '')
map('n',"'", "'")
vim.keymap.set("n", "-", ":Ex<CR>", { desc = "Open parent directory" })
map('v','J', ":m '>+1<CR>gv=gv")
map('v','K', ":m '>-2<CR>gv=gv")

vim.keymap.set("n", "<leader>m", ":TroubleToggle<CR>",
  {silent = true, noremap = true}
)
vim.keymap.set('i', '<C-l>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
vim.keymap.set('i', '<C-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
vim.keymap.set('i', '<C-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
vim.keymap.set('i', '<C-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })

