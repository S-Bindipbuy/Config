return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗"
					}
				}
			})
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup {
				ensure_installed = {
					"tailwindcss",
					"emmet_language_server",
					"lua_ls", "pyright", "ts_ls",
					"html", "cssls", "phpactor"
				}
			}
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require('cmp_nvim_lsp').default_capabilities()
			local lspconf = require('lspconfig')
			lspconf.lua_ls.setup({
				capabilities = capabilities
			})
			lspconf.ts_ls.setup({
				capabilities = capabilities,
			})
			lspconf.pyright.setup({
				capabilities = capabilities
			})
			lspconf.html.setup({
				capabilities = capabilities,
			})
			lspconf.cssls.setup({
				capabilities = capabilities
			})
			lspconf.phpactor.setup({
				capabilities = capabilities,
			})
			lspconf.rust_analyzer.setup({
				capabilities = capabilities
			})
			lspconf.zls.setup({
				capabilities = capabilities
			})
			lspconf.emmet_language_server.setup({
				filetypes = { "php", "html", "css", "blade" },
				capabilities = capabilities
			})
			lspconf.tailwindcss.setup({
				filetypes = { "php", "html", "css", "blade" },
				capabilities = capabilities
			})
		end
	}
}
