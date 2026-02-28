require("core.options")
require("core.keymaps")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        error("Error cloning lazy.nvim:\n" .. out)
    end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup {
    { import = "plugins" },

    { "folke/which-key.nvim" },
    { 'lewis6991/gitsigns.nvim' },
    { 'windwp/nvim-autopairs',   event = "InsertEnter", opts = {} },
    { 'saghen/blink.indent' }, -- TODO)) errors in md when scrolling fast
    { "lewis6991/satellite.nvim" },

    -- todo))
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            cmdline = { view = "cmdline" }
        },
        dependencies = { "MunifTanjim/nui.nvim" }
    }
}
