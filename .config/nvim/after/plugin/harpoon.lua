
---------------------
---- Harpon  keys ---
----------------------

local mark =    require("harpoon.mark")
local ui =      require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<leader>e", ui.toggle_quick_menu)



---------------------
---- Screen keys---
----------------------
vim.keymap.set("n", "<C-8>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-9>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-0>", function() ui.nav_file(3) end)



