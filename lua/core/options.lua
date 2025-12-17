local o = vim.opt

-- line numbers & cursor line
o.number = true
o.relativenumber = true
o.cursorline = true

-- wrap
o.linebreak = true -- won't break words

-- system sync nebo tak nejak bych to pojmenoval more
o.clipboard = "unnamedplus"
o.undofile = true

-- search settings
o.ignorecase = true
o.smartcase = true

-- tabs & indentation
o.autoindent = true
o.expandtab = true
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4

-- whitespaces
o.listchars = "eol:↵,space:·,tab:🡒 ,nbsp:␣,trail:~,extends:⟩,precedes:⟨"

-- diagnostics
vim.diagnostic.config {
    virtual_text = true,
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "",
            [vim.diagnostic.severity.WARN] = "",
            [vim.diagnostic.severity.INFO] = "",
            [vim.diagnostic.severity.HINT] = "",
        },
        numhl = {
            [vim.diagnostic.severity.ERROR] = "ErrorMsg",
            [vim.diagnostic.severity.WARN] = "WarningMsg",
        },
    },
}

