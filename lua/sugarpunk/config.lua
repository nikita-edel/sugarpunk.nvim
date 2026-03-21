local M = {}

local defaults = {
	styles = {
		comments = { italic = true, bold = false },
		keywords = { italic = false, bold = false },
		booleans = { italic = false, bold = false },
		functions = { italic = false, bold = false },
		variables = { italic = false, bold = false },
	},
	overrides = {},
}

M.options = vim.deepcopy(defaults)

-- merge both tables, override defaults
function M.setup(opts)
	M.options = vim.tbl_deep_extend("force", defaults, opts or {})
end

function M.style(key)
	local style = M.options.styles[key] or {}
	return {
		italic = style.italic or false,
		bold = style.bold or false,
	}
end

return M
