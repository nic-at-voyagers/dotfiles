-- >>> quickshell:managed:begin v1 - written by Settings -> Hyprland. Edits here are overwritten; put your own Lua above.
hl.config({ dwindle = { smart_split = false } })  --@k dwindle:smart_split
hl.config({ dwindle = { force_split = 2 } })      --@k dwindle:force_split
-- <<< quickshell:managed:end
hl.config({
	general = {
		col = {
			active_border = { colors = {"rgb(09ddff)", "rgb(003bd2)"}},
			inactive_border = "rgb(003bd2)"
		},
		gaps_in = 4,
		gaps_out = 15,
		gaps_workspaces = 50,

		border_size = 3,

	},
	decoration = {
		active_opacity = 1,
		inactive_opacity = 1,
		fullscreen_opacity = 1,
		blur = {
			enabled = true,
			xray = true,
			special = false,
			new_optimizations = true,
			size = 3,
			passes = 2,
			brightness = 1,
			noise = 0.00,
			contrast = 1,
			vibrancy = 0.5,
			vibrancy_darkness = 0.5,
			popups = true,
			popups_ignorealpha = 0.6,
			input_methods = false,
			input_methods_ignorealpha = 0.8
		},
	}
})
