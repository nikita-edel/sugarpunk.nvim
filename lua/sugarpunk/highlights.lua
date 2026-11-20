local cfg = require("sugarpunk.config")
local palette = require("sugarpunk.palette")

local M = {}

local modules = { "editor", "syntax", "treesitter", "lsp", "plugins" }

local function styled(key, fg)
	local style = cfg.style(key)
	return { fg = fg, italic = style.italic, bold = style.bold }
end

local function set_all(groups)
	for group, opts in pairs(groups) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

function M.apply()
	for _, name in ipairs(modules) do
		set_all(require("sugarpunk.groups." .. name)(palette, styled))
	end
	set_all(cfg.options.overrides)
end

return M
