return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		views = {
			mini = {
				win_options = {
					winblend = 0,
				},
			},
		},
    highlights = {
      NotifyBackground = { bg = "#FFFFFF", fg = "#000000" },
    },
	},
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
}
