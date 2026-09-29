-- MONITOR CONFIG
hl.monitor({
    output = "",
    mode = "preferred",
    position = "auto",
    scale = "1"
})

hl.gesture({
    fingers = 3,
    direction = "swipe",
    action = "move"
})
hl.gesture({
    fingers = 3,
    direction = "pinch",
    action = "fullscreen"
})
hl.gesture({
    fingers = 4,
    direction = "horizontal",
    action = "workspace"
})
hl.gesture({
    fingers = 4,
    direction = "up",
    action = function()
        hl.dispatch(hl.dsp.global("quickshell:overviewWorkspacesToggle"))
    end
})
hl.gesture({
    fingers = 4,
    direction = "down",
    action = function()
        hl.dispatch(hl.dsp.global("quickshell:overviewWorkspacesToggle"))
    end
})

hl.config({
    gestures = {
        workspace_swipe_distance = 700,
        workspace_swipe_cancel_ratio = 0.2,
        workspace_swipe_min_speed_to_force = 5,
        workspace_swipe_direction_lock = true,
        workspace_swipe_direction_lock_threshold = 10,
        workspace_swipe_create_new = true
    },
    general = {
        -- Gaps and border
        gaps_in = 10,
        gaps_out = 15,
        gaps_workspaces = 100,

        border_size = 4,

        col = {
            active_border = "rgba(0DB7D455)",
            inactive_border = "rgba(31313600)"
        },
        resize_on_border = true,

        no_focus_fallback = true,
        allow_tearing = true, -- This just allows the `immediate` window rule to work
        snap = {
            enabled = true,
            window_gap = 10,
            monitor_gap = 5,
            respect_gaps = true
        }
    },
    decoration = {
        -- 2 = circle, higher = squircle, 4 = very obvious squircle
        -- Fuck clearly visible squircles. 100% Apple brainrot.
        rounding_power = 0,
        rounding = 18,

        shadow = {
            enabled = false,
            range = 20,
            offset = {0, 2},
            render_power = 10,
            color = "rgba(00000020)"

        },
        -- Dim
        dim_inactive = true,
        dim_strength = 0.05,
        dim_special = 0.2
    },
    animations = {
        enabled = true
    },
    dwindle = {
        preserve_split = true,
        smart_split = false,
        smart_resizing = false
        -- precise_mouse_move = true,
    },
})

local prod = function(ds)
	return ds
end

-- Curves
hl.curve("expressiveFastSpatial", { type = "bezier", points = {{0.42, 1.67}, {0.21, 0.90}} })
hl.curve("expressiveSlowSpatial", { type = "bezier", points = {{0.39, 1.29}, {0.35, 0.98}} })
hl.curve("expressiveDefaultSpatial", { type = "bezier", points = {{0.38, 1.21}, {0.22, 1.00}} })
hl.curve("emphasizedDecel", { type = "bezier", points = {{0.05, 0.8}, {0.1, 1}} })
hl.curve("emphasizedAccel", { type = "bezier", points = {{0.3, 0}, {0.9, 0.15}} })
hl.curve("standardDecel", { type = "bezier", points = {{0, 0}, {0, 1}} })
hl.curve("menu_decel", { type = "bezier", points = {{0.1, 1}, {0, 1}} })
hl.curve("menu_accel", { type = "bezier", points = {{0.52, 0.03}, {0.72, 0.08}} })
hl.curve("stall", { type = "bezier", points = {{1, -0.1}, {0.7, 0.85}} })
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


hl.config({
    input = {
        kb_layout = "us",
        numlock_by_default = true,
        repeat_delay = 200,
        repeat_rate = 40,

        follow_mouse = 1,
        off_window_axis_events = 2,

        touchpad = {
            natural_scroll = true,
            disable_while_typing = true,
            clickfinger_behavior = true,
            scroll_factor = 0.7
        }
    },

    misc = {
        disable_hyprland_logo = true,
        disable_splash_rendering = true,
        vrr = 0,
        mouse_move_enables_dpms = true,
        key_press_enables_dpms = true,
        animate_manual_resizes = false,
        animate_mouse_windowdragging = false,
        enable_swallow = false,
        swallow_regex = "(foot|kitty|allacritty|Alacritty)",
        on_focus_under_fullscreen = 2,
        allow_session_lock_restore = true,
        session_lock_xray = true,
        initial_workspace_tracking = false,
        focus_on_activate = true
    },

    binds = {
        scroll_event_delay = 0,
        hide_special_on_workspace_change = true
    },

    cursor = {
        zoom_factor = 1,
        zoom_rigid = false,
        zoom_disable_aa = true,
        hotspot_padding = 1
    },

    xwayland = {
        force_zero_scaling = true
    }
})
