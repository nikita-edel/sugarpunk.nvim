return function(p)
	local groups = {
		["@lsp.type.class"] = { fg = p.chrome_teal },
		["@lsp.type.struct"] = { fg = p.chrome_teal },
		["@lsp.type.enum"] = { fg = p.chrome_teal },
		["@lsp.type.interface"] = { fg = p.chrome_teal },
		["@lsp.type.typeParameter"] = { fg = p.chrome_teal },
		["@lsp.type.namespace"] = { fg = p.violet_flux },
		["@lsp.type.module"] = { fg = p.violet_flux },
		["@lsp.type.function"] = { fg = p.neon_yellow },
		["@lsp.type.method"] = { fg = p.neon_yellow },
		["@lsp.type.variable"] = { fg = p.slate_light },
		["@lsp.type.parameter"] = { fg = p.matrix_green },
		["@lsp.type.property"] = { fg = p.synth_magenta },
		["@lsp.type.enumMember"] = { fg = p.matrix_green },
		["@lsp.type.macro"] = { fg = p.signal_green },
		["@lsp.type.keyword"] = { fg = p.synth_magenta },
		["@lsp.type.comment"] = { link = "Comment" },
		["@lsp.type.string"] = { fg = p.neon_pink },
		["@lsp.type.number"] = { fg = p.aurum_gold },
		["@lsp.type.operator"] = { fg = p.cyber_orange },
		["@lsp.type.decorator"] = { fg = p.aurum_gold },
		["@lsp.type.event"] = { fg = p.off_white },
		["@lsp.type.regexp"] = { fg = p.neon_pink },
		["@lsp.type.selfKeyword"] = { fg = p.synth_magenta },
		["@lsp.mod.deprecated"] = { strikethrough = true },
		["@lsp.mod.inactive"] = { fg = p.gunmetal },
		["@lsp.typemod.variable.unused"] = { italic = true },

		DiagnosticOk = { fg = p.signal_green },

		LspReferenceText = { bg = p.gunmetal },
		LspReferenceRead = { bg = p.gunmetal },
		LspReferenceWrite = { bg = p.gunmetal, underline = true },
		LspCodeLens = { fg = p.electric_blue_dim, italic = true },
		LspInlayHint = { fg = p.electric_blue_dim, bg = p.gunmetal, italic = true },
		LspSignatureActiveParameter = { fg = p.electric_blue, bold = true },
	}

	local severities = {
		Error = p.synth_magenta,
		Warn = p.cyber_orange,
		Info = p.electric_blue,
		Hint = p.chrome_teal,
	}
	for severity, color in pairs(severities) do
		groups["Diagnostic" .. severity] = { fg = color }
		groups["DiagnosticUnderline" .. severity] = { undercurl = true, sp = color }
		groups["DiagnosticSign" .. severity] = { fg = color, bg = p.void }
		groups["DiagnosticVirtualText" .. severity] =
			{ fg = color, bg = p.void, italic = true }
	end

	return groups
end
