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
	},
	decoration = {
		active_opacity = 1,
		inactive_opacity = 1,
		fullscreen_opacity = 1,
	}
})
