return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup {
				ensure_installed = { "lua_ls", "clangd", "pyright", "ts_ls", "html", "cssls", "bashls"}
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
					capabilities = capabilities
				})
				lspconf.pyright.setup({
					capabilities = capabilities
				})
				lspconf.clangd.setup({
					capabilities = capabilities
				})
				lspconf.html.setup({
					capabilities = capabilities
				})
				lspconf.cssls.setup({
					capabilities = capabilities
				})
				lspconf.bashls.setup({
					capabilities = capabilities
				})
		end
	}
}
