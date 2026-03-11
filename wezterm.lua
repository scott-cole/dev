local wezterm = require("wezterm")
local act = wezterm.action

return {
	font = wezterm.font("JetBrains Mono"), -- or your preferred font
	font_size = 13.0, -- adjust so your window height matches cell count
	line_height = 1.0, -- default 1.0; smaller decimals can remove leftover space
	cell_width = 1.0, -- normal width

	-- remove all padding
	window_padding = { left = 0, right = 0, top = 0, bottom = 0 },

	-- UI
	enable_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	window_decorations = "NONE",

	keys = {
		-- splits
		{ key = "v", mods = "ALT", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
		{ key = "s", mods = "ALT", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },

		-- close panel
		{ key = "x", mods = "ALT", action = act.CloseCurrentPane({ confirm = false }) },

		-- pane navigation
		{ key = "h", mods = "ALT", action = act.ActivatePaneDirection("Left") },
		{ key = "l", mods = "ALT", action = act.ActivatePaneDirection("Right") },
		{ key = "k", mods = "ALT", action = act.ActivatePaneDirection("Up") },
		{ key = "j", mods = "ALT", action = act.ActivatePaneDirection("Down") },

		-- new tab
		{ key = "c", mods = "ALT", action = act.SpawnTab("CurrentPaneDomain") },

		-- Create a new tab with Alt+n
		{
			key = "n",
			mods = "ALT",
			action = wezterm.action.SpawnTab("DefaultDomain"),
		},

		-- Navigate directly to tabs 1–5 with Alt+1..5
		{ key = "1", mods = "ALT", action = wezterm.action.ActivateTab(0) },
		{ key = "2", mods = "ALT", action = wezterm.action.ActivateTab(1) },
		{ key = "3", mods = "ALT", action = wezterm.action.ActivateTab(2) },
		{ key = "4", mods = "ALT", action = wezterm.action.ActivateTab(3) },
		{ key = "5", mods = "ALT", action = wezterm.action.ActivateTab(4) },

		-- full screen
		{ key = "f", mods = "ALT", action = act.ToggleFullScreen },
	},
}
