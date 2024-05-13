-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap.set

keymap("i", "jj", "<Esc>")
keymap("i", "jk", "<Esc>:w<Enter>")
keymap("n", "<C-a>", "gg<S-v>G")
keymap("n", "dd", '"_dd') -- black hole register
keymap("n", "db", '"_db')
keymap("n", "cw", '"_cw')
keymap("n", "cwi", '"_cwi')
keymap("x", "d", '"_d')

-- windows
keymap("n", "<leader>ww", "<C-W>p", { desc = "Other window" })
keymap("n", "<leader>wd", "<C-W>c", { desc = "Delete window" })
keymap("n", "<leader>w-", "<C-W>s", { desc = "Split window below" })
keymap("n", "<leader>w=", "<C-W>v", { desc = "Split window right" })
keymap("n", "<leader>-", "<C-W>s", { desc = "Split window below" })
keymap("n", "<leader>=", "<C-W>v", { desc = "Split window right" })

-- leader
keymap("n", "<leader>t", "<cmd>Translate<cr>", { desc = "Translate" })
keymap("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>", { desc = "Make it rain" })
