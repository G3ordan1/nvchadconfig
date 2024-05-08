require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { nowait = true, desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<leader>fm", function() require("conform").format() end, { desc = "formatting" })
-- map ("v", ">", {">gv", "indent"})
--
-- map(
--   "n",
--   "<leader>db",
--   {"<cmd> DapToggleBreakpoint <CR>", "Add breakpoint at line"},
--   { plugin = true }
-- )
--
-- map("n", "<leader>dr", {"<cmd> DapContinue <CR>", "Start or continue the debugger"}, { plugin = true })
