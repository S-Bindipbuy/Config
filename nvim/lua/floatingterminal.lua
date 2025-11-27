local terminal = {}
function terminal.Open_floating_terminal()
    local width = 80
    local height = 20
    local row = math.floor((vim.o.lines - height) / 2)
    local col = math.floor((vim.o.columns - width) / 2)

    local buf = vim.api.nvim_create_buf(true, true)

    vim.api.nvim_open_win(buf, true, {
        relative = 'editor',
        width = width,
        height = height,
        row = row,
        col = col,
        border = 'rounded',
        style = 'minimal',
    })

	vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'NONE', fg = '#FFFFFF' })
	vim.api.nvim_set_hl(0, 'TermCursor', { bg = '#FFFFFF', fg = 'NONE' })
    vim.fn.termopen("fish")

    vim.cmd("startinsert")
end

return terminal
