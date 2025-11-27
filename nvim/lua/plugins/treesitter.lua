return {
	'nvim-treesitter/nvim-treesitter', build = ':TSUpdate',
	config = function()
		local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
		parser_config.blade = {
			install_info = {
				url = "https://github.com/EmranMR/tree-sitter-blade",
				files = { "src/parser.c" },
				branch = "main",
			},
			filetype = "blade",
		}
		vim.filetype.add({
			pattern = {
				[".*%.blade%.php"] = "blade",
			},
		})
		require'nvim-treesitter.configs'.setup {
			ensure_installed = { "javascript", "blade", "phpdoc", "php", "php_only", "html", "css" },
			sync_install = false,
			highlight = {
				enable = true,
				indent = {
					enable = true;
				},
				disable = { "c", "rust" },
				additional_vim_regex_highlighting = false,
			},
		}
	end
}
