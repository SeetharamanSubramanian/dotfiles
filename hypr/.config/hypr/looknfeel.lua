-- Personal appearance overrides for Omarchy 4 / Hyprland's Lua configuration.

hl.config({
  general = {
    -- Slightly more breathing room than the Omarchy defaults (5 / 10).
    gaps_in = 6,
    gaps_out = 12,

    -- Drag a window's edge with the mouse to resize it.
    resize_on_border = true,
  },
})

hl.config({
  decoration = {
    rounding = 8,

    -- Soft shadow to separate the rounded corners from the background.
    shadow = {
      enabled = true,
      range = 12,
      render_power = 3,
      color = "rgba(00000044)",
    },

    -- Subtle dim on unfocused windows; makes the focused monitor obvious.
    dim_inactive = true,
    dim_strength = 0.08,
  },
})
