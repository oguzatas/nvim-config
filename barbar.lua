require'barbar'.setup {
	animation = true,
	clickable = true,
	exclude_ft = {'javascript'},
	exclude_name = {'package.json'},
	focus_on_close = 'left',
	highlight_inactive_file_icons = false,
	highlight_visible = true,
	icons = {
		buffer_index = false,
		buffer_number = false,
		button = '',
		diagnostics = {
		  [vim.diagnostic.severity.ERROR] = {enabled = true, icon = 'ﬀ'},
		  [vim.diagnostic.severity.WARN] = {enabled = false},
		  [vim.diagnostic.severity.INFO] = {enabled = false},
		  [vim.diagnostic.severity.HINT] = {enabled = true},
		},
		gitsigns = {
		  added = {enabled = true, icon = '+'},
		  changed = {enabled = true, icon = '~'},
		  deleted = {enabled = true, icon = '-'},
		},
		filetype = {
		  custom_colors = false,
		  enabled = true,
		},
		separator = {left = '▎', right = ''},
		separator_at_end = true,
		modified = {button = '●'},
		pinned = {button = '', filename = true},
		preset = 'default',
		alternate = {filetype = {enabled = false}},
		current = {buffer_index = true},
		inactive = {button = '×'},
		visible = {modified = {buffer_number = false}},
	},
	insert_at_end = true,
	maximum_padding = 1,
	minimum_padding = 1,
	maximum_length = 30,
	minimum_length = 0,
	semantic_letters = true,
	sidebar_filetypes = {
		NvimTree = true,
		undotree = {text = 'undotree'},
		['neo-tree'] = {event = 'BufWipeout'},
		Outline = {event = 'BufWinLeave', text = 'symbols-outline'},
	},
	letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',
	no_name_title = nil,
	
}

-- Set Leader key to , (comma)
vim.g.mapleader = ","

-- Keybindings for barbar.nvim
local opts = { noremap = true, silent = true }

-- Move to previous/next
vim.keymap.set('n', ',p', ':BufferPrevious<CR>', opts)  -- Leader + p (previous buffer)
vim.keymap.set('n', ',n', ':BufferNext<CR>', opts)      -- Leader + n (next buffer)

-- Goto buffer in position...
vim.keymap.set('n', ',1', ':BufferGoto 1<CR>', opts)    -- Leader + 1 (switch to buffer 1)
vim.keymap.set('n', ',2', ':BufferGoto 2<CR>', opts)    -- Leader + 2 (switch to buffer 2)
vim.keymap.set('n', ',3', ':BufferGoto 3<CR>', opts)    -- Leader + 3 (switch to buffer 3)
vim.keymap.set('n', ',4', ':BufferGoto 4<CR>', opts)    -- Leader + 4 (switch to buffer 4)
vim.keymap.set('n', ',5', ':BufferGoto 5<CR>', opts)    -- Leader + 5 (switch to buffer 5)
vim.keymap.set('n', ',6', ':BufferGoto 6<CR>', opts)    -- Leader + 6 (switch to buffer 6)
vim.keymap.set('n', ',7', ':BufferGoto 7<CR>', opts)    -- Leader + 7 (switch to buffer 7)
vim.keymap.set('n', ',8', ':BufferGoto 8<CR>', opts)    -- Leader + 8 (switch to buffer 8)
vim.keymap.set('n', ',9', ':BufferGoto 9<CR>', opts)    -- Leader + 9 (switch to buffer 9)
vim.keymap.set('n', ',0', ':BufferLast<CR>', opts)      -- Leader + 0 (switch to the last buffer)

-- Pin/unpin buffer
vim.keymap.set('n', ',bp', ':BufferPin<CR>', opts)      -- Leader + bp (pin/unpin buffer)

-- Close buffer
vim.keymap.set('n', ',bc', ':BufferClose<CR>', opts)    -- Leader + bc (close current buffer)

-- Magic buffer-picking mode
vim.keymap.set('n', ',bP', ':BufferPick<CR>', opts)     -- Leader + bP (pick buffer)
vim.keymap.set('n', ',bd', ':BufferPickDelete<CR>', opts)  -- Leader + bd (pick and delete buffer)

-- Sort automatically by...
vim.keymap.set('n', ',bb', ':BufferOrderByBufferNumber<CR>', opts)  -- Leader + bb (sort by buffer number)
vim.keymap.set('n', ',bn', ':BufferOrderByName<CR>', opts)          -- Leader + bn (sort by name)
vim.keymap.set('n', ',bd', ':BufferOrderByDirectory<CR>', opts)     -- Leader + bd (sort by directory)
vim.keymap.set('n', ',bl', ':BufferOrderByLanguage<CR>', opts)      -- Leader + bl (sort by language)
vim.keymap.set('n', ',bw', ':BufferOrderByWindowNumber<CR>', opts)  -- Leader + bw (sort by window number)

