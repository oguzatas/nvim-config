vim.g.mapleader = ","
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })




-- Buffer Management ------------------------------------------- 

-- Buffer Next/Prev
vim.keymap.set("n", "<TAB>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<S-TAB>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>q", ":bdelete<CR>", { noremap = true, silent = true })

-- Buffer reset
vim.keymap.set("n", "<leader>bp", ":BufferLinePick<CR>", { noremap = true, silent = true })

-- List Buffers and pick
vim.keymap.set("n", "<leader>bl", ":ls<CR>:b<Space>", { noremap = true })

--Close all other buffers expect active
vim.keymap.set("n", "<leader>bo", ":%bd|e#|bd#<CR>", { noremap = true, silent = true })


-- Telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find Files", noremap = true, silent = true })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live Grep", noremap = true, silent = true })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Buffers", noremap = true, silent = true })
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Help Tags", noremap = true, silent = true })

-- Comment.nvim
vim.keymap.set("n", "gcc", "<Plug>(comment_toggle_linewise_current)", {})
vim.keymap.set("v", "gc", "<Plug>(comment_toggle_linewise_visual)", {})

-- BufferLine
vim.keymap.set("n", "<TAB>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<S-TAB>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>q", ":bdelete<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bp", ":BufferLinePick<CR>", { noremap = true, silent = true })

-- Formatter
vim.keymap.set("n", "<leader>fm", function()
  require("conform").format({ async = true })
end, { desc = "Format File" })

-- Linter trigger
vim.keymap.set("n", "<leader>lt", function()
  require("lint").try_lint()
end, { desc = "Lint current file" })

-- Alpha dashboard shortcut
vim.keymap.set("n", "<leader>;", "<cmd>Alpha<cr>", { desc = "Open Dashboard" })
