-- Disable netrw, since we're using nvim-tree
vim.g.loaded_netrw = 0
vim.g.loaded_netrwPlugin = 0

-- Optionally enable 24-bit color
vim.opt.termguicolors = true

-- Setup for nvim-tree
require("nvim-tree").setup({
  sync_root_with_cwd = true,
  respect_buf_cwd = true,

  update_focused_file = {
    enable = true,
	update_cwd = true,
	update_root = true,

  },
  -- Sort settings
  sort = {
    sorter = "case_sensitive", -- sort by case
  },

  -- View settings (size and placement)
  view = {
    width = 40,               -- Width of the file explorer
    side = 'left',            -- Position the file explorer on the lefti
	adaptive_size = true,
  },

  -- Renderer settings (appearance)
  renderer = {
    group_empty = false,      -- Group empty folders together
    special_files = { "README.md", "Makefile", "package.json" },  -- Example for special files
  },

  -- Filter settings (to hide certain files/folders)
  filters = {
    dotfiles = true,          -- Hide dotfiles by default
  },

  -- Git settings
  git = {
    enable = true,            -- Show git status in the tree
    ignore = false,           -- Show files that are ignored by git
  },

  -- Optional: Set up mappings for nvim-tree actions
  actions = {
    open_file = {
      quit_on_open = true,    -- Close nvim-tree when a file is opened
    },
  },
})
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })




