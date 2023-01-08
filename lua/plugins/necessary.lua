return {
	-- replaces filetype
	--{
	--	"nathom/filetype.nvim",
	--	lazy = false,
	--},

	-- caches plugins
	{
		"lewis6991/impatient.nvim",
		lazy = false,
	},

	-- essential library
	"nvim-lua/plenary.nvim",

	-- treesitter plugins
	--{ "nvim-treesitter/playground", cmd = "TSPlaygroundToggle" },

	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		Event = "BufReadPost",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"bash",
					"c",
					"cmake",
					-- "comment", -- comments are slowing down TS bigtime, so disable for now
					"cpp",
					"css",
					"diff",
					"fish",
					"gitignore",
					"graphql",
					"help",
					"html",
					"http",
					"java",
					"javascript",
					"jsdoc",
					"jsonc",
					"latex",
					"lua",
					"markdown",
					"markdown_inline",
					"meson",
					"norg",
					"php",
					"python",
					"query",
					"regex",
					"rust",
					"scss",
					"sql",
					"svelte",
					"toml",
					"tsx",
					"typescript",
					"vim",
					"yaml",
					"json",
					"r",
				},
				-- sync_install = false,
				-- auto_install = false,
				highlight = { enable = true },
				indent = { enable = true },
				context_commentstring = { enable = true, enable_autocmd = false },
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = "<C-space>",
						node_incremental = "<C-space>",
						scope_incremental = "<C-s>",
						node_decremental = "<C-bs>",
					},
				},
				query_linter = {
					enable = true,
					use_virtual_text = true,
					lint_events = { "BufWrite", "CursorHold" },
				},
				--playground = {
				--  enable = true,
				--  disable = {},
				--  updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
				--  persist_queries = true, -- Whether the query persists across vim sessions
				--  keybindings = {
				--    toggle_query_editor = "o",
				--    toggle_hl_groups = "i",
				--    toggle_injected_languages = "t",
				--    toggle_anonymous_nodes = "a",
				--    toggle_language_display = "I",
				--    focus_language = "f",
				--    unfocus_language = "F",
				--    update = "R",
				--    goto_node = "<cr>",
				--    show_help = "?",
				--  },
				--},
				--textobjects = {
				--  select = {
				--    enable = false,
				--  },
				--  move = {
				--    enable = false,
				--  },
				--  lsp_interop = {
				--    enable = false,
				--  },
				--},
			})
		end,
	},

	-- needs tree-sitter-cli to work
	{
		"nvim-treesitter/nvim-treesitter-context",
		event = "BufReadPre",
		config = true,
	},
}
