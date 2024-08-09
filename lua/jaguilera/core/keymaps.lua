vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

--------------------
-- general keymaps
--------------------

-- show complete path
keymap.set("n", "<leader>sp", ":echo @%<CR>") -- go to previous tab

-- exit from insert mode
keymap.set("i", "jj", "<ESC>")

-- clean words highlighted from searching
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- quotes wrapping
keymap.set("v", '<leader>"', 'xi\"<ESC>pa\"<ESC>')
-- parenthesis wrapping
keymap.set("v", '<leader>(', 'xi(<ESC>pa)<ESC>')
-- sunrround wrapping
keymap.set("v", '<leader>[', 'xi[<ESC>pa]<ESC>')
-- sunrround wrapping
keymap.set("v", '<leader>{', 'xi{<ESC>pa}<ESC>')
keymap.set("v", "<leader>'", "xi'<ESC>pa'<ESC>")

-- move in inser mode
keymap.set("i", "<Right>", "<Esc><Right>a")

-- remove character in normal mode but doesn't copy it
keymap.set("n", "x", '"_x"')

-- save file
keymap.set("n", "<leader>w", ":w<CR>")
-- close nvim
keymap.set("n", "<leader>q", ":q<CR>")
-- close buffer
keymap.set("n", "<leader>c", ":bd<CR>")

-- increment/decrement numbers under the cursor pointer
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-a>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontalyy
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- move 1 more lines up or down in normal and visual selection modes.
keymap.set("n", "<S-Up>", ":m .-2<CR>==")
keymap.set("n", "<S-Down>", ":m .+1<CR>==")
keymap.set("v", "<S-Up>", ":m '<-2<CR>gv=gv")
keymap.set("v", "<S-Down>", ":m '>+1<CR>gv=gv")

--------------------
-- plugins keymaps
--------------------

-- vim maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- go to previous tab

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle NvimTree
keymap.set("n", "<leader>nf", ":NvimTreeFindFile<CR>") -- find file in NvimTree

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
keymap.set("n", "<leader>fH", "<cmd>Telescope oldfiles<cr>") -- list previous open files
keymap.set("n", "<leader>fC", "<cmd>Telescope git_commits<cr>") -- list of commits

-- neural
keymap.set("n", "<leader>fa", "<Plug>(neural_prompt)") -- find files within current working directory, respects .gitignore

-- normal mode (sneak-like)
--[[ keymap.set("n", "s", "<cmd>HopChar2AC<CR>", { noremap = false })
keymap.set("n", "S", "<cmd>HopChar2BC<CR>", { noremap = false }) ]]

-- visual mode (sneak-like)
-- keymap.set("v", "s", "<cmd>HopChar2AC<CR>", { noremap = false })
-- keymap.set("v", "S", "<cmd>HopChar2BC<CR>", { noremap = false })

-- Codium remapping
-- keymap.set("i", "<M-g>", function() return vim.fn["codeium#Accept"]() end, { expr = true })
keymap.set("i", "<S-Right>", function()
	return vim.fn["codeium#CycleCompletions"](1)
end, { expr = true })
keymap.set("i", "<S-Left>", function()
	return vim.fn["codeium#CycleCompletions"](-1)
end, { expr = true })
-- keymap.set("i", "<M-x>", function() return vim.fn["codeium#Clear"]() end, { expr = true })
