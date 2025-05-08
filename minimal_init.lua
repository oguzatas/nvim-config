-- Set Leader key to , (comma)
vim.g.mapleader = ","

-- Print the Leader key to verify
print("Leader key is set to: " .. vim.g.mapleader)

-- Minimal keybindings
vim.keymap.set('n', ',p', ':echo "Leader + p pressed"<CR>', { noremap = true, silent = true })
vim.keymap.set('n', ',n', ':echo "Leader + n pressed"<CR>', { noremap = true, silent = true })
