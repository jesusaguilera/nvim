local setup, nvim_tree = pcall(require, "nvim-tree")

if not setup then
	return
end

-- recommended settings from nvim-tree documentation
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- change color for arrows in tree to light blue
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

nvim_tree.setup({
	renderer = {
		icons = {
			glyphs = {
				folder = {
					arrow_closed = "", -- arrow when folder is closed
					arrow_open = "", -- arrow when folder is open
				},
			},
		},
	},
	actions = {
		open_file = {
			quit_on_open = false,
			resize_window = true,
			window_picker = {
				enable = false,
			},
		},
    change_dir = {
      enable = false,
      global = false,
      restrict_above_cwd = false,
    },
	},
})
