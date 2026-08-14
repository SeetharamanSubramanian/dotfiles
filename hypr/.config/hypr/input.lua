-- Personal input overrides for Omarchy 4 / Hyprland's Lua configuration.

hl.config({
  input = {
    kb_layout = "us",
    -- Keep Caps Lock as Compose; a lone Shift clears accidental Caps Lock.
    kb_options = "compose:caps,shift:both_capslock_cancel",
    repeat_rate = 40,
    repeat_delay = 600,
    numlock_by_default = true,
    touchpad = {
      scroll_factor = 0.4,
    },
  },
})

o.window("(Alacritty|kitty|foot)", { scroll_touchpad = 1.5 })
o.window("com.mitchellh.ghostty", { scroll_touchpad = 0.2 })
