local auto_format_active = false

local format = function()
    vim.cmd("silent! write")
    vim.lsp.buf.format({ timeout_ms = 2000 })
    vim.cmd("silent! write")
end

function FormatAndSave()
    if auto_format_active then
        format()
    end
end

vim.cmd([[
    augroup InsertModeLeave
        autocmd!
        autocmd InsertLeave * silent! lua FormatAndSave()
    augroup END
]])

local function set_format_on_save(active)
    auto_format_active = active
    if auto_format_active then
        print("Autoformat: ON")
    else
        print("Autoformat: OFF")
    end
end

local utils = require("utils")
utils.map("n", "<leader>taf", function()
    set_format_on_save(not auto_format_active)
end)

return {
    set_format_on_save = set_format_on_save,
}