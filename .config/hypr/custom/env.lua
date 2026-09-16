-- >>> quickshell:managed:begin v1 - written by Settings -> Hyprland. Edits here are overwritten; put your own Lua above.
hl.env("HYPRCURSOR_THEME", "Breeze_Light")  --@e HYPRCURSOR_THEME
hl.env("XCURSOR_THEME", "Breeze_Light")     --@e XCURSOR_THEME
hl.env("HYPRCURSOR_SIZE", "24")             --@e HYPRCURSOR_SIZE
hl.env("XCURSOR_SIZE", "24")                --@e XCURSOR_SIZE
-- <<< quickshell:managed:end
hl.env("XDG_MENU_PREFIX", "arch-")

hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("WLR_NO_HARDWARE_CURSORS", "1")
