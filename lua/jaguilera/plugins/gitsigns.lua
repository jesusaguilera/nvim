-- import gitsigns plugin safely
local setup, gitsigns = pcall(require, "gitsigns")
if not setup then
	return
end

-- configure/enable gitsigns
gitsigns.setup({
	current_line_blame = true,
	current_line_blame_formatter = "👽  <author>, <author_time:%d-%m-%Y> - <summary>",
  current_line_blame_opts = {
    virt_text_hl = 'GitSignsCurrentLineBlame',
  },
})
