local p = require("sugarpunk.palette")

local M = {}
local vim = vim -- so lsp shuts up

function M.apply()
    vim.g.terminal_color_0 = p.void
    vim.g.terminal_color_1 = p.neon_pink
    vim.g.terminal_color_2 = p.matrix_green
    vim.g.terminal_color_3 = p.aurum_gold
    vim.g.terminal_color_4 = p.electric_blue_dim
    vim.g.terminal_color_5 = p.synth_magenta
    vim.g.terminal_color_6 = p.chrome_teal
    vim.g.terminal_color_7 = p.slate_light
    vim.g.terminal_color_8 = p.gunmetal
    vim.g.terminal_color_9 = p.hot_pink
    vim.g.terminal_color_10 = p.signal_green
    vim.g.terminal_color_11 = p.neon_yellow
    vim.g.terminal_color_12 = p.electric_blue_dim
    vim.g.terminal_color_13 = p.violet_flux
    vim.g.terminal_color_14 = p.cyber_orange
    vim.g.terminal_color_15 = p.off_white
end

return M
