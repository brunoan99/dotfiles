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
	},
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
}
