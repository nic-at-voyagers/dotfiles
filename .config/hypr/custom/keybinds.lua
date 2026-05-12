hl.bind("CTRL+SUPER+ALT+Slash", hl.dsp.exec_cmd("xdg-open ~/.config/hypr/custom/keybinds.lua"), {description = "Edit user keybinds"} )

hl.bind("SUPER + Q", hl.dsp.exec_cmd(terminal), {description = "Terminal"} )
hl.bind("SUPER + C", hl.dsp.window.close(), {description = "Close"} )
hl.bind("SUPER + D", hl.dsp.exec_cmd("vesktop"), {description = "Vesktop"})
--#/# bind = SUPER+ALT, Hash,, -- Send to workspace -- (1, 2, 3,...)
--# We use raw keycodes because some keyboard layouts register number keys as different chars. The codes can be verified with `wev`
for i = 1, 10 do
 local numberkey = {10,11,12,13,14,15,16,17,18,19}
 hl.bind("SUPER + SHIFT + code:"..numberkey[i], hl.dsp.window.move({ workspace = i, follow = false}) )
end
--# keypad numbers
for i = 1, 10 do
 local numpadkey = {87,88,89,83,84,85,79,80,81,90}
 hl.bind("SUPER + SHIFT + code:"..numpadkey[i], hl.dsp.window.move({ workspace = i, follow = false}) )
end
