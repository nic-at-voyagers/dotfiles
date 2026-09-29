-- >>> quickshell:managed:begin v1 - written by Settings -> Hyprland. Edits here are overwritten; put your own Lua above.
hl.config({ dwindle = { smart_split = false } })  --@k dwindle:smart_split
hl.config({ dwindle = { force_split = 2 } })      --@k dwindle:force_split


local prod = function(ds)
	return ds
end

hl.curve("linear", {type = "bezier", points = {{0, 0}, {1, 1}}})
hl.curve("gits_lock", {type = "bezier", points = {{0.2, 1.4}, {0.35, 1}}})
hl.curve("gits_zap", {type = "bezier", points = {{0.9, 0}, {0.1, 1}}})
hl.curve("gits_delete", {type = "bezier", points = {{0.85, 0}, {1, 0.35}}})
hl.curve("gits_scan", {type = "bezier", points = {{0.4, 0}, {0.2, 1}}})

-- Configs
-- windows
hl.animation({leaf = "windows", enabled = true, speed = prod(3), bezier = "gits_lock", style = "popin 55%"})
hl.animation({leaf = "windowsIn", enabled = true, speed = prod(3), bezier = "gits_lock", style = "popin 55%"})
hl.animation({leaf = "windowsOut", enabled = true, speed = prod(2), bezier = "gits_delete", style = "popinfade 30%"})
hl.animation({leaf = "windowsMove", enabled = true, speed = prod(3.5), bezier = "gits_lock"})
hl.animation({leaf = "fade", enabled = true, speed = prod(2.5), bezier = "gits_scan"})
hl.animation({leaf = "fadeIn", enabled = true, speed = prod(2), bezier = "gits_scan"})
hl.animation({leaf = "fadeOut", enabled = true, speed = prod(1.6), bezier = "gits_delete"})

-- layers
hl.animation({leaf = "layersIn", enabled = true, speed = prod(3), bezier = "gits_lock", style = "popin 70%"})
hl.animation({leaf = "layersOut", enabled = true, speed = prod(1.8), bezier = "gits_delete", style = "fade"})
hl.animation({leaf = "fadeLayersIn", enabled = true, speed = prod(2), bezier = "gits_scan"})
hl.animation({leaf = "fadeLayersOut", enabled = true, speed = prod(1.5), bezier = "gits_delete"})

-- workspace
hl.animation({ leaf = "workspaces", enabled = true, speed = 4, bezier = "gits_lock", style = "slidefade 50%" })
-- specialWorkspace
hl.animation({leaf = "specialWorkspace", enabled = true, speed = prod(3), bezier = "gits_zap", style = "slidefadevert 12%"})
-- zoom
hl.animation({ leaf = "zoomFactor", enabled = false, speed = 3, bezier = "standardDecel" })


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
	},
    input = {
        kb_layout = "us",
        numlock_by_default = true,
        repeat_delay = 200,
        repeat_rate = 40,

        follow_mouse = 1,
        off_window_axis_events = 2,
	}
})
