
vim.g.mapleader = ","
vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true

-- Otomatik çalışma dizini
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*",
  callback = function()
    vim.cmd("cd %:p:h")
  end,
})
