vim.g.mapleader = ","
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<TAB>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<S-TAB>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })

-- Buffer close
vim.keymap.set("n", "<leader>q", ":bdelete<CR>", { noremap = true, silent = true })

-- Buffer reset
vim.keymap.set("n", "<leader>bp", ":BufferLinePick<CR>", { noremap = true, silent = true })
 
