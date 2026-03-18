local M = {}
local vim = vim -- so lsp shuts up

function M.setup(opts)
    require("sugarpunk.config").setup(opts)

    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") == 1 then
        vim.cmd("syntax reset")
    end

    vim.g.colors_name = "sugarpunk"
    vim.o.termguicolors = true

    require("sugarpunk.highlights").apply()
    require("sugarpunk.terminal").apply()
end

return M
