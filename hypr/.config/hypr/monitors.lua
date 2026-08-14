-- Monitor layout for Omarchy 4 / Hyprland's Lua configuration.
-- HDMI-A-1 is the 1080p display on the left; DP-3 is the 4K display on the right.
-- This preserves the layout previously defined in monitors.conf.

hl.env("GDK_SCALE", "1.75")
hl.monitor({ output = "HDMI-A-1", mode = "1920x1080@60", position = "0x0", scale = "auto" })
hl.monitor({ output = "DP-3", mode = "3840x2160@60", position = "1920x0", scale = "auto" })

-- Keep the primary desktop on the 4K display and workspace 2 on the 1080p display.
hl.workspace_rule({ workspace = "1", monitor = "DP-3", default = true, persistent = true })
hl.workspace_rule({ workspace = "2", monitor = "HDMI-A-1", default = true, persistent = true })
