local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>ba", mark.add_file)
vim.keymap.set("n", "<leader>be", ui.toggle_quick_menu)

vim.keymap.set("n", "<leader>bn", ui.nav_next)
vim.keymap.set("n", "<leader>bp", ui.nav_prev)

for i = 1,9 do
	vim.keymap.set("n", "<leader>"..tostring(i), function() ui.nav_file(i) end)
end
