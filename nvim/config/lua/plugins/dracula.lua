return {
	"Mofiqul/dracula.nvim",
	priority = 1000,
	config = function()
		require("dracula").setup({
			show_end_of_buffer = true, -- default false
			transparent_bg = true, -- default false
		})
		vim.cmd.colorscheme("dracula")
	end,
}
