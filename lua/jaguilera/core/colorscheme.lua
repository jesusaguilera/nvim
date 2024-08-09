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

-- Define highlight groups for italic and bold virtual text
vim.cmd [[highlight DiagnosticVirtualTextError guifg=#e06c75 guibg=NONE gui=italic,bold]]
vim.cmd [[highlight DiagnosticVirtualTextWarn guifg=#e5c07b guibg=NONE gui=italic,bold]]
vim.cmd [[highlight DiagnosticVirtualTextInfo guifg=#61afef guibg=NONE gui=italic,bold]]
vim.cmd [[highlight DiagnosticVirtualTextHint guifg=#98c379 guibg=NONE gui=italic,bold]]

