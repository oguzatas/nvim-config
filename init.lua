local vim = vim
local Plug = vim.fn['plug#']

vim.opt.clipboard = "unnamedplus"
vim.call('plug#begin')

vim.g.mapleader = ","
Plug 'EdenEast/nightfox.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug('romgrk/barbar.nvim')
Plug('nvim-lualine/lualine.nvim')
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
vim.call('plug#end')
home=os.getenv("HOME")
package.path = home .. "/.config/nvim/?.lua;" .. package.path

print("Leader key is set to: " .. vim.g.mapleader)
-- Automatically change the working directory to the directory of the current file
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*",
  callback = function()
    vim.cmd("cd %:p:h")
  end,
})




require"common"
require"theme"
require"vimtree"
require"barbar"
require"lua_line"



