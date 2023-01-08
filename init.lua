-- init.lua
-- tenseoverflow/nvim
-- 2023

-- configs
vim.g.mapleader = " "
require("config.lazy")
require("config.options")

vim.api.nvim_create_autocmd("User", {
	pattern = "VeryLazy",
	callback = function()
		require("config.autocmds")
		require("config.keymaps")
	end,
})

-- optimizations
require("impatient")
