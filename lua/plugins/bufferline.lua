return {
	"akinsho/bufferline.nvim",
	dependencies = "nvim-tree/nvim-web-devicons",

	config = function()
		vim.opt.termguicolors = true
		require("bufferline").setup{
            options = {
                indicator = { style = "none", },
                show_buffer_close_icons = false,
                always_show_bufferline = false,
            }
        }
	end,
}
