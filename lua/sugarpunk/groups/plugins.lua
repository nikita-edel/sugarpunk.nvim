return function(p)
	local groups = {
		-- noice.nvim
		NoiceCmdline = { fg = p.off_white, bg = p.void },
		NoiceCmdlinePopup = { fg = p.slate_light, bg = p.void },
		NoiceCmdlineIcon = { fg = p.matrix_green, bg = p.void },
		NoiceCmdlineIconLua = { fg = p.electric_blue, bg = p.void },
		NoiceCmdlineIconSearch = { fg = p.aurum_gold, bg = p.void },
		NoiceCmdlineIconHelp = { fg = p.hot_pink, bg = p.void },
		NoiceCmdlinePopupBorder = { fg = p.electric_blue_dim, bg = p.void },
		NoiceCmdlinePopupBorderSearch = { fg = p.aurum_gold, bg = p.void },
		NoiceCmdlinePopupBorderHelp = { fg = p.neon_pink, bg = p.void },
		NoiceCmdlinePopupBorderLua = { fg = p.electric_blue, bg = p.void },
		NoicePopup = { fg = p.slate_light, bg = p.void },
		NoicePopupBorder = { fg = p.electric_blue_dim, bg = p.void },
		NoiceMini = { fg = p.slate_light, bg = p.void },
		NoiceConfirm = { fg = p.off_white, bg = p.void },
		NoiceConfirmBorder = { fg = p.electric_blue_dim, bg = p.void },
		NoiceLspProgressTitle = { fg = p.chrome_teal },
		NoiceLspProgressClient = { fg = p.electric_blue_dim },
		NoiceLspProgressSpinner = { fg = p.electric_blue },
		NoiceFormatProgressDone = { fg = p.void, bg = p.electric_blue },
		NoiceFormatProgressTodo = { fg = p.void, bg = p.void },

		-- bufferline.nvim
		BufferLineFill = { fg = p.slate_light, bg = p.void },
		BufferLineBackground = { fg = p.slate_light, bg = p.void },
		BufferLineBuffer = { fg = p.slate_light, bg = p.void },
		BufferLineBufferSelected = { fg = p.electric_blue, bg = p.void, bold = true },
		BufferLineIndicatorSelected = { fg = p.electric_blue, bg = p.void },
		BufferLineSeparator = { fg = p.slate_light, bg = p.void },
		BufferLineOffsetSeparator = { fg = p.slate_light, bg = p.void },
		BufferLineCloseButton = { fg = p.synth_magenta, bg = p.void },
		BufferLineCloseButtonSelected = { fg = p.synth_magenta, bg = p.void },
		BufferLineModified = { fg = p.cyber_orange, bg = p.void },
		BufferLineModifiedSelected = { fg = p.cyber_orange, bg = p.void },

		-- indent-blankline.nvim
		IblIndent = { fg = p.electric_blue_faint },
		IblScope = { fg = p.electric_blue_dim },
		IblWhitespace = { fg = p.gunmetal },

		-- nvim-tree.lua
		NvimTreeWinSeparator = { fg = p.slate_light, bg = p.void },
		NvimTreeRootFolder = { fg = p.aurum_gold, bg = p.gunmetal, bold = true },
		NvimTreeOpenedFile = { fg = p.electric_blue },
		NvimTreeDeleted = { fg = p.hot_pink },
		NvimTreeSymlink = { fg = p.electric_blue_dim },
		NvimTreeGitNew = { fg = p.matrix_green },
		NvimTreeGitDirty = { fg = p.cyber_orange },
		NvimTreeIndentMarker = { fg = p.off_white },

		-- telescope.nvim
		TelescopeResultsLineNr = { fg = p.electric_blue_dim },
		TelescopeResultsDiffAdd = { fg = p.signal_green },
		TelescopeResultsDiffChange = { fg = p.cyber_orange },
		TelescopeResultsDiffDelete = { fg = p.hot_pink },
	}

	for _, part in ipairs({ "", "Prompt", "Results", "Preview" }) do
		groups["Telescope" .. part .. "Border"] = { fg = p.electric_blue_dim, bg = p.void }
		groups["Telescope" .. part .. "Title"] =
			{ fg = p.electric_blue, bg = p.void, bold = true }
	end
	for _, part in ipairs({ "", "Results", "Preview" }) do
		groups["Telescope" .. part .. "Normal"] = { fg = p.slate_light, bg = p.void }
	end

	-- todo-comments.nvim
	for _, kw in ipairs({ "TODO", "FIX", "FIXME", "NOTE", "WARN", "HACK", "PERF", "TEST" }) do
		groups["TodoBg" .. kw] = { fg = p.aurum_gold, bold = true }
	end
	return groups
end
