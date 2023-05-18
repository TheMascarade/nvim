vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>fm", vim.cmd.ZenMode)
vim.keymap.set("i", "<A-q>", "<Esc>")

-- alternar lineas
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi")
vim.keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi")
vim.keymap.set("n", "<A-j>", ":m +1<CR>==")
vim.keymap.set("n", "<A-k>", ":m -2<CR>==")

-- guardar cambios e incluir archivo
vim.keymap.set("n", "<leader><leader>", vim.cmd.so)
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>qq", vim.cmd.quit)
vim.keymap.set("n", "<leader>qn", vim.cmd.quitall)

-- split navigation
vim.keymap.set("n", "<leader>ñ", function ()
    vim.cmd.wincmd("l")
end)
vim.keymap.set("n", "<leader>j", function ()
    vim.cmd.wincmd("h")
end)
vim.keymap.set("n", "<leader>k", function ()
    vim.cmd.wincmd("j")
end)
vim.keymap.set("n", "<leader>l", function ()
    vim.cmd.wincmd("k")
end)

-- split panes custom
vim.keymap.set("n", "<leader>vs", vim.cmd.vsplit)
vim.keymap.set("n", "<leader>vt", function ()
    vim.cmd.vsplit()
    vim.cmd.wincmd("l")
    vim.cmd.terminal()
end)

-- terminal navigation
vim.keymap.set("t", "<C-n>", "<C-\\><C-n>")
