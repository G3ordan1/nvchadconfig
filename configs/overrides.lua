local M = {}

M.treesitter = {
	ensure_installed = {
		"vim",
		"lua",
		"markdown",
		"markdown_inline",
		"python",
		"r",
		"latex",
    "c",
    "cpp",
    "sql"
	},
	indent = {
		enable = true,
		-- disable = {
		--   "python"
		-- },
	},
}

M.mason = {
	ensure_installed = {
		-- lua stuff
		"lua-language-server",
		"stylua",

    -- c/cpp stuff
		"clangd",
		"clang-format",

		--python stuff
		"python-lsp-server",
		"autopep8",

		--r stuff
		"r-languageserver",

		--latex
		"ltex-ls",
		"vale",

    "sqls",
	},
}

-- git support in nvimtree
M.nvimtree = {
	git = {
		enable = true,
	},

	renderer = {
		highlight_git = true,
		icons = {
			show = {
				git = true,
			},
		},
	},
}

return M
