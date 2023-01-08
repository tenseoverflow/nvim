local util = require("util")

-- better up/down
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Move to window using the <ctrl> hjkl keys
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- lazy
vim.keymap.set("n", "<leader>l", "<cmd>:Lazy<cr>", { desc = "Lazy" })

-- new file
vim.keymap.set("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })

vim.keymap.set("n", "<leader>xl", "<cmd>lopen<cr>", { desc = "Open Location List" })
vim.keymap.set("n", "<leader>xq", "<cmd>copen<cr>", { desc = "Open Quickfix List" })

-- toggle options
vim.keymap.set("n", "<leader>tf", require("plugins.lsp.format").toggle, { desc = "Format on Save" })
vim.keymap.set("n", "<leader>ts", function()
	util.toggle("spell")
end, { desc = "Spelling" })
vim.keymap.set("n", "<leader>tw", function()
	util.toggle("wrap")
end, { desc = "Word Wrap" })
vim.keymap.set("n", "<leader>tn", function()
	util.toggle("relativenumber", true)
	util.toggle("number")
end, { desc = "Line Numbers" })
vim.keymap.set("n", "<leader>td", util.toggle_diagnostics, { desc = "Diagnostics" })
local conceallevel = vim.o.conceallevel > 0 and vim.o.conceallevel or 3
vim.keymap.set("n", "<leader>tc", function()
	util.toggle("conceallevel", false, { 0, conceallevel })
end, { desc = "Conceal" })

-- lazygit
vim.keymap.set("n", "<leader>gg", function()
	require("util").float_term({ "lazygit" })
end, { desc = "Lazygit (cwd)" })
vim.keymap.set("n", "<leader>gG", function()
	util.float_term({ "lazygit" }, { cwd = util.get_root() })
end, { desc = "Lazygit (root dir)" })

-- highlights under cursor
if vim.fn.has("nvim-0.9.0") == 1 then
	vim.keymap.set("n", "<leader>hl", vim.show_pos, { desc = "Highlight Groups at cursor" })
end

-- floating terminal
vim.keymap.set("n", "<leader>ot", function()
	util.float_term(nil, { cwd = util.get_root() })
end, { desc = "Terminal (root dir)" })
vim.keymap.set("n", "<leader>oT", function()
	require("util").float_term()
end, { desc = "Terminal (cwd)" })
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })

-- windows
vim.keymap.set("n", "<leader>ww", "<C-W>p", { desc = "other-window" })
vim.keymap.set("n", "<leader>wd", "<C-W>c", { desc = "delete-window" })
vim.keymap.set("n", "<leader>w-", "<C-W>s", { desc = "split-window-below" })
vim.keymap.set("n", "<leader>w|", "<C-W>v", { desc = "split-window-right" })

-- buffers
vim.keymap.set("n", "<leader>b]", "<cmd>:BufferLineCycleNext<CR>", { desc = "Next Buffer" })
vim.keymap.set("n", "<leader>bb", "<cmd>:e #<cr>", { desc = "Switch to Other Buffer" })
vim.keymap.set("n", "<leader>b[", "<cmd>:BufferLineCyclePrev<CR>", { desc = "Previous Buffer" })
vim.keymap.set("n", "<leader>`", "<cmd>:e #<cr>", { desc = "Switch to Other Buffer" })
vim.keymap.set("n", "<tab>", "<cmd>:BufferLineCycleNext<CR>", { desc = "Next tab" })
vim.keymap.set("n", "<s-tab>", "<cmd>:BufferLineCyclePrev<CR>", { desc = "Previous tab" })

-- neotree
vim.keymap.set("n", "<C-n>", "<cmd>Neotree toggle<CR>", { desc = "Neotree" })

-- saving
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "Save file" })
