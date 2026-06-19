require("scripts/general")
require("scripts/programs")
require("scripts/lookandfeel")
require("scripts/animations")
require("scripts/keybindings")
require("scripts/autostart")
require("scripts/env")


-- hl.exec_cmd("swayidle timeout 180 'hyprctl dispatch dpms off; killall bg.sh' resume 'hyprctl dispatch dpms on; ~/dots/myscripts/bg.sh'")

-- hl.exec_cmd("swayidle timeout 5 'hyprctl dispatch dpms off;' resume 'hyprctl dispatch dpms on;'")

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

