return {
    "refractalize/oil-git-status.nvim",
    dependencies = {
        'stevearc/oil.nvim',
        { "nvim-mini/mini.icons", opts = {} },
    },
    lazy = false,

    config = function()
        require("oil").setup{
            columns = { "icon", "permission", "size", "mtime" },
            delete_to_trash = true,
            skip_confirm_for_simple_edits = true,
            keymaps = {
                ["<S-h>"] = { "actions.parent", mode = "n" },
                ["<S-l>"] = { "actions.select", mode = "n" },
            },
            view_options = { show_hidden = true },

            win_options = { signcolumn = "yes:2" }, -- for oil-git-status
        }

        require("oil-git-status").setup()

        vim.keymap.set("n", "-", "<Cmd>Oil<CR>", { desc = "Open parent directory" })
    end
}
