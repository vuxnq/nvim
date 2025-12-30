-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

local map = function (keys, func, desc, mode)
    local opts = { desc = desc, noremap = true, silent = true }
    mode = mode or "n"
    vim.keymap.set(mode, keys, func, opts)
end

-- general
map("<C-s>", "<cmd>w <CR>", "Save", {"n", "i"})
map("<Esc>", ":noh<CR>", "Clear highlights")
map("<C-c>", ":%y+<CR>", "Copy everything")

map("<leader>tl", "<cmd>set wrap!<CR>", "Toggle linewrap")
map("<leader>tw", "<cmd>set list!<CR>", "Toggle whitespace")

map("x", '"_x', "Ignore register")
map("<", "<gv", "Stay in indent mode", "v")
map(">", ">gv", "Stay in indent mode", "v")

-- window management
map("<Up>", ":resize +2<CR>", "Increase height")
map("<Down>", ":resize -2<CR>", "Decrease height")
map("<Left>", ":vertical resize -2<CR>", "Increase width")
map("<Right>", ":vertical resize +2<CR>", "Decrease width")

-- buffer management
map("<Tab>", ":bnext<CR>", "Next buffer")
map("<S-Tab>", ":bprevious<CR>", "Previous buffer")
map("<leader>n", "<cmd>enew<CR>", "New buffer")
map("<leader>x", ":bdelete!<CR>", "Close buffer")

-- swap lines
map("<A-j>", ":m .+1<CR>", "Move line down")
map("<A-k>", ":m .-2<CR>", "Move line up")
map("<A-j>", ":m '>+1<CR>gv", "Move lines down", "v")
map("<A-k>", ":m '<-2<CR>gv", "Move lines up", "v")

-- lsp
map("<leader>ld", ":lua vim.lsp.buf.definition()<CR>", "Go to definition")
map("<leader>li", ":lua vim.lsp.buf.implementation()<CR>", "Go to implementation")
map("K", ":lua vim.lsp.buf.hover()<CR>", "Hover")
map("<leader>ln", ":lua vim.lsp.buf.rename()<CR>", "Rename")
map("<leader>lr", ":lua vim.lsp.buf.references()<CR>", "Get references")
map("<leader>lf", ":lua vim.lsp.buf.format()<CR>", "Format")
