return function(p, styled)
	return {
		Comment = styled("comments", p.slate_light),
		SpecialComment = { fg = p.chrome_teal, italic = true },
		Todo = { fg = p.aurum_gold, bold = true },

		Constant = { fg = p.synth_magenta },
		String = { fg = p.neon_pink },
		Character = { fg = p.neon_pink },
		Number = { fg = p.aurum_gold },
		Float = { fg = p.aurum_gold },
		Boolean = styled("booleans", p.cyber_orange),

		Identifier = styled("variables", p.matrix_green),
		Function = styled("functions", p.neon_yellow),

		Statement = styled("keywords", p.synth_magenta),
		Keyword = styled("keywords", p.synth_magenta),
		Conditional = styled("keywords", p.cyber_orange),
		Repeat = styled("keywords", p.cyber_orange),
		Label = styled("keywords", p.cyber_orange),
		Exception = styled("keywords", p.cyber_orange),
		Operator = { fg = p.cyber_orange },

		PreProc = { fg = p.violet_flux },
		Include = { fg = p.violet_flux },
		Define = { fg = p.violet_flux },
		PreCondit = { fg = p.violet_flux },
		Macro = { fg = p.signal_green },

		Type = { fg = p.electric_blue },
		StorageClass = { fg = p.cyber_orange },
		Structure = { fg = p.chrome_teal },
		Typedef = { fg = p.chrome_teal },

		Special = { fg = p.cyber_orange },
		SpecialChar = { fg = p.aurum_gold },
		Tag = { fg = p.electric_blue },
		Delimiter = { fg = p.cyber_orange },
		Debug = { fg = p.synth_magenta },

		Underlined = { underline = true },
		Ignore = { fg = p.gunmetal },
		Error = { fg = p.synth_magenta, bold = true },

		diffAdded = { fg = p.signal_green },
		diffRemoved = { fg = p.neon_pink },
		diffChanged = { fg = p.cyber_orange },
		diffFile = { fg = p.electric_blue },
		diffNewFile = { fg = p.signal_green },
		diffOldFile = { fg = p.neon_pink },
		diffLine = { fg = p.violet_flux },
		diffIndexLine = { fg = p.chrome_teal },
	}
end
