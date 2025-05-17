return {
	"neovim/nvim-lspconfig",
	dependencies = {
		{ "williamboman/mason.nvim",          config = true },
		{ "williamboman/mason-lspconfig.nvim" },
	},
	config = function()
		require("mason").setup()

		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"pyright",
				"vtsls",
				"html",
				"cssls",
				"clangd",
				"omnisharp",
				"bashls",
				"jsonls",
				"vimls",
				"dockerls",
				"tailwindcss",
				"eslint",
			},
		})

		local lspconfig = require("lspconfig")

		-- Lua için özel ayar
		lspconfig.lua_ls.setup({
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						library = vim.api.nvim_get_runtime_file("", true),
						checkThirdParty = false,
					},
				},
			},
		})

		-- Diğer sunucular
		local servers = {
			"pyright",
			"ts_ls",
			"html",
			"cssls",
			"clangd",
			"omnisharp",
			"bashls",
			"jsonls",
			"vimls",
			"dockerls",
			"tailwindcss",
			"eslint",
		}

		for _, server in ipairs(servers) do
			lspconfig[server].setup({})
		end

		-- Diagnostic ayarları
		vim.diagnostic.config({
			virtual_text = {
				severity = { min = vim.diagnostic.severity.ERROR },
			},
			signs = {
				severity = { min = vim.diagnostic.severity.ERROR },
			},
			underline = {
				severity = { min = vim.diagnostic.severity.ERROR },
			},
			update_in_insert = false,
		})
	end,
}
