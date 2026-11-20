local M = {}

function M.setup(opts)
	require("sugarpunk.config").setup(opts)
	M.load()
end

function M.load()
	if vim.g.colors_name then
		vim.cmd("highlight clear")
	end
	if vim.fn.exists("syntax_on") == 1 then
		vim.cmd("syntax reset")
	end

	vim.g.colors_name = "sugarpunk"
	vim.o.termguicolors = true

	require("sugarpunk.highlights").apply()
	require("sugarpunk.terminal").apply()
end

return M
