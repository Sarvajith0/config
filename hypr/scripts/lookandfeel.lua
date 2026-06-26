
hl.config({
    general = {
        gaps_in = 0,
        gaps_out = 0,

        border_size = 0,

        col = {
            active_border = "rgb(000000)",
            inactive_border = "rgb(000000)",
        },

        resize_on_border = false,
        allow_tearing = false,
        layout = "master",
    },

    dwindle = {
        preserve_split = true,
    },

    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo = true,
        disable_splash_rendering = true,
    },

    decoration = {
        rounding = 0,
        rounding_power = 2,

        active_opacity = 1,
        inactive_opacity = 1,

        shadow = {
            enabled = true,
            range = 10,
            render_power = 3,
            color = "rgba(1a1a1aee)",
        },

        blur = {
            enabled = false,
            size = 6,
            passes = 5,
            vibrancy = 0.1696,
            new_optimizations=true,
        },
    },
})
