local p = require("sugarpunk.palette")

local M = {}

local colors = {
	p.void,
	p.neon_pink,
	p.matrix_green,
	p.aurum_gold,
	p.electric_blue_dim,
	p.synth_magenta,
	p.chrome_teal,
	p.slate_light,
	p.gunmetal,
	p.hot_pink,
	p.signal_green,
	p.neon_yellow,
	p.electric_blue_dim,
	p.violet_flux,
	p.cyber_orange,
	p.off_white,
}

function M.apply()
	for i, color in ipairs(colors) do
		vim.g["terminal_color_" .. (i - 1)] = color
	end
end

return M
