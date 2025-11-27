-- Insert Mode
-- Shift + Tab: Expand or jump in snippets

-- Select Mode
-- Shift + Tab: Expand or jump in snippets

-- Normal Mode
-- space + ff: Trigger the file finder to quickly locate and open files.
-- space + fg: Initiate a live grep search to find text within files in your project.
-- space + fb: Display a list of currently open buffers for easy navigation.
-- space + fh: Access the help tags to quickly find documentation and help topics.
-- Space + t: Open floating terminal
-- Space + fe: Toggle NvimTree file explorer
-- Space + fw: Focus on NvimTree
-- gd: Go to definition
-- Space + ca: Code actions from LSP
-- Space + lb: Restart LSP
-- Control + s: Save current buffer
-- Control + b: Quit current buffer
-- F2: Toggle transparency
-- Alt + h/j/k/l: Navigate between windows
-- Alt + arrow keys: Navigate between windows
-- Control + c: Ecscape Key

-- Highlight settings for NvimTree window separator
local ls = require("luasnip")
local terminal = require("floatingterminal")
local builtin = require("telescope.builtin")

vim.keymap.set("i", "<S-Tab>", function()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    end
end, { silent = true })

vim.keymap.set('s', "<S-Tab>", function()
	if ls.expand_or_jumpable() then
		ls.expand_or_jump()
	end
end, { silent = true })

vim.keymap.set('n', '<leader>t', terminal.Open_floating_terminal, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>fe', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<leader>fw', ':NvimTreeFocus<CR>')
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set({ 'n', 'v' },'<leader>ca', vim.lsp.buf.code_action, {})
vim.keymap.set('n', '<leader>lb', ':LspRestart<CR>')
vim.keymap.set('n', '<C-s>', ':w<CR>')
vim.keymap.set('n', '<C-b>', ':q<CR>')
vim.keymap.set('n', '<F2>', ':TransparentToggle<CR>')
vim.keymap.set('n', '<A-h>', '<C-w>h', { noremap = true, silent = true })
vim.keymap.set('n', '<A-j>', '<C-w>j', { noremap = true, silent = true })
vim.keymap.set('n', '<A-k>', '<C-w>k', { noremap = true, silent = true })
vim.keymap.set('n', '<A-l>', '<C-w>l', { noremap = true, silent = true })
vim.keymap.set('n', '<A-left>', '<C-w>h', { noremap = true, silent = true })
vim.keymap.set('n', '<A-down>', '<C-w>j', { noremap = true, silent = true })
vim.keymap.set('n', '<A-up>', '<C-w>k', { noremap = true, silent = true })
vim.keymap.set('n', '<A-right>', '<C-w>l', { noremap = true, silent = true })
vim.keymap.set('i', '<C-c>', '<Esc>', { noremap = true, silent = true })
vim.keymap.set('c', '<C-c>', '<Esc>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fe', ':Yazi toggle<CR>', {})

