-- User Keybindings
hl.bind("CTRL + SUPER + Slash", hl.dsp.exec_cmd("xdg-open ~/.config/illogical-impulse/config.json"), { description = "Edit shell config" })

-- >>> quickshell:managed:begin v1 - written by Settings -> Hyprland. Edits here are overwritten; put your own Lua above.
pcall(hl.unbind, "SUPER + C")                                                   --@u SUPER+c
hl.bind("SUPER + C", hl.dsp.window.close(), { description = "Window: Close" })  --@b SUPER+c
pcall(hl.unbind, "SUPER + D")                                                   --@u SUPER+d
hl.bind("SUPER + D", hl.dsp.exec_cmd("vesktop"), { description = "App: Vesktop" })  --@b SUPER+d
pcall(hl.unbind, "SUPER + Q")                                                   --@u SUPER+q
hl.bind("SUPER + Q", hl.dsp.exec_cmd("kitty"), { description = "App: Terminal" })  --@b SUPER+q
-- <<< quickshell:managed:end

hl.bind("CTRL+SUPER+ALT+Slash", hl.dsp.exec_cmd("xdg-open ~/.config/hypr/custom/keybinds.lua"), {description = "Edit user keybinds"} )

hl.bind("SUPER + C", hl.dsp.window.close(), {description = "Close"} )

--#/# bind = SUPER+ALT, Hash,, -- Send to workspace -- (1, 2, 3,...)
for i = 1, 10 do
    hl.bind("SUPER + SHIFT + " .. (i % 10), function()
        hl.dispatch(hl.dsp.window.move({ workspace = workspace_in_group(i), follow = false }))
    end, { description = "Window: Send to workspace " .. i })
end
--# We also use raw keycodes because some keyboard layouts register number keys as different chars. The codes can be verified with `wev`
-- for i = 1, 10 do
--     local numberkey = { 10, 11, 12, 13, 14, 15, 16, 17, 18, 19 }
--     hl.bind("SUPER + ALT + code:" .. numberkey[i], function()
--         hl.dispatch(hl.dsp.window.move({ workspace = workspace_in_group(i), follow = false }))
--     end)
-- end
--# keypad numbers
for i = 1, 10 do
    local numpadkey = { 87, 88, 89, 83, 84, 85, 79, 80, 81, 90 }
    hl.bind("SUPER + SHIFT + code:" .. numpadkey[i], function()
        hl.dispatch(hl.dsp.window.move({ workspace = workspace_in_group(i), follow = false }))
    end)
end

--#/# bind = SUPER + ←/↑/→/↓,, -- Focus in direction
for i = 1, 4 do
    local arrowkey = { "H", "L", "K", "J" }
    local focusdir = { "l", "r", "u", "d" }
    hl.bind("SUPER + " .. arrowkey[i], hl.dsp.focus({ direction = focusdir[i] }),
        { description = "Window: Focus " .. arrowkey[i] })
end
for i = 1, 2 do
    local arrowkey = { "H", "L" }
    local focusdir = { "l", "r" }
    hl.bind("SUPER + " .. arrowkey[i], hl.dsp.focus({ direction = focusdir[i] }))
end
--#/# bind = SUPER + SHIFT, ←/↑/→/↓,, -- Move in direction
for i = 1, 4 do
    local arrowkey = { "H", "L", "K", "J" }
    local focusdir = { "l", "r", "u", "d" }
    hl.bind("SUPER + SHIFT + " .. arrowkey[i], hl.dsp.window.move({ direction = focusdir[i] }),
        { description = "Window: Move " .. arrowkey[i] })
end

hl.bind("SUPER + U", hl.dsp.global("quickshell:usageToggle"), { description = "Shell: Toggle app usage stats" })
hl.bind("SUPER + BracketLeft", hl.dsp.exec_cmd("loginctl lock-session"), { description = "Session: Lock" })
