require("general")
require("programs")
require("lookandfeel")
require("animations")
require("keybindings")
-------------------
---- AUTOSTART ----
-------------------
-- hl.exec_cmd("notify-send 'Lua Config Loaded'")
hl.on("hyprland.start", function()
    hl.exec_cmd("mako")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("spotify")
    hl.exec_cmd("hypridle")
    hl.window_rule({
    name = "spotify-workspace",
    match = { class = "Spotify" },
    workspace = "3 silent",
})
hl.window_rule({
    name = "zapzap-workspace",
    match = { class = "zapzap" },
    workspace = "4",
})
-- hl.window_rule({ match = { class = "firefox" },        opacity = "1 1" })
hl.window_rule({ match = { class = "firefox" }, opaque = true })
hl.window_rule({ match = { class = "firefox" }, no_blur = true })
end)
hl.layer_rule({
  match        = { namespace = "rofi" },
  blur         = true,
  ignore_alpha = 0.5,
})
-- hl.exec_cmd("swayidle timeout 180 'hyprctl dispatch dpms off; killall bg.sh' resume 'hyprctl dispatch dpms on; ~/dots/myscripts/bg.sh'")

-- hl.exec_cmd("swayidle timeout 5 'hyprctl dispatch dpms off;' resume 'hyprctl dispatch dpms on;'")
-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------
hl.env("XCURSOR_THEME", "Bibata-Modern-Ice")
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

----------------
---- INPUT -----
----------------

hl.config({
    input = {
        kb_layout = "us",
        kb_variant = "",
        kb_model = "",
        kb_options = "",
        kb_rules = "",

        follow_mouse = 1,
        sensitivity = 0,
        natural_scroll = false,
        touchpad = {
            natural_scroll = true,
        },
    },
})

local overlayLayerRule = hl.layer_rule({
    name  = "no-anim-overlay",
    match = { namespace = "^my-overlay$" },
    no_anim = true,
})
overlayLayerRule:set_enabled(false)

