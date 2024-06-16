require("nightfox").setup({
	options = {
		transparent = true,
		styles = { -- Style to be applied to different syntax groups
			comments = "italic", -- Value is any valid attr-list value `:help attr-list`
			conditionals = "NONE",
			constants = "bold",
			functions = "italic",
			keywords = "NONE",
			numbers = "NONE",
			operators = "NONE",
			strings = "NONE",
			types = "NONE",
			variables = "bold",
			CursorLine = "#000000",
		},
	},
})

-- setup must be called before loading
vim.opt.cursorline = false
vim.cmd("colorscheme nordfox")
