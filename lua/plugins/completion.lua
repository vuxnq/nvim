return {
    'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },

    version = '1.*',
    opts = {
        keymap = { preset = 'super-tab' },
        completion = {
            ghost_text = { enabled = true },
        },
        sources = { default = { 'lsp', 'path', 'snippets', 'buffer' }, },
        fuzzy = { implementation = "lua" }
    },
    opts_extend = { "sources.default" }
}
