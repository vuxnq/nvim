
return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },

	config = function()
		require("lualine").setup{
            options = {
                component_separators = { left = '|', right = '|' },
                section_separators = "",
                globalstatus = true,
            },
            sections = {
                lualine_a = { { 'mode', fmt = function(str) return str:sub(1,1) end } },
                lualine_b = { { 'branch', icon = '' }, 'diagnostics' },
                lualine_c = { { 'filename', symbols = { modified = "●", readonly = "" } } },
                lualine_x = { 'encoding', { 'lsp_status', icons_enabled = false }, { 'filetype', colored = false, icon_only = true } },
                lualine_y = { 'selectioncount', 'searchcount', 'progress' },
                lualine_z = { '%l:%c' },
            },
        }
	end,
}
