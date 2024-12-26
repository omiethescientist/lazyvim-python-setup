return {
	{
		"akinsho/toggleterm.nvim",
		config = true,
		cmd = "ToggleTerm",
		keys = {
			{ "<F4>", "<cmd>ToggleTerm<cr>", desc = "Togglefloating terminal" },
		},
		opts = {
			open_mapping = "<F4>",
			size = 20,
			direction = "horizontal",
			shade_filetypes = {},
			hide_numbers = true,
			insert_mappings = true,
			terminal_mappings = true,
			start_in_insert = true,
			close_on_exit = true,
		},
	},
}
