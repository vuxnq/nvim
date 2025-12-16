-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- conciseness
local opts = { noremap = true, silent = true }

-- yeaaaa
vim.keymap.set("n", "<C-s>", "<cmd>w <CR>", opts)
vim.keymap.set("n", "<leader>sn", "<cmd>noautocmd w <CR>", opts)

vim.keymap.set("n", "<Esc>", ":noh<CR>", opts)

-- zmrde necpi mi to do registeru
vim.keymap.set("n", "x", '"_x', opts)

-- resize
vim.keymap.set("n", "<Up>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<Down>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<Right>", ":vertical resize +2<CR>", opts)

-- buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", opts)
vim.keymap.set("n", "<leader>x", ":bdelete!<CR>", opts)
vim.keymap.set("n", "<leader>n", "<cmd>enew<CR>", opts)

-- linewrap
vim.keymap.set("n", "<leader>lw", "<cmd>set wrap!<CR>", opts)

-- stay in indent mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)
