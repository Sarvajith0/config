---------------------
---- KEYBINDINGS ----

local mainMod = "ALT"
local terminal = "ghostty"
local fileManager = "nautilus --new-window"
local menu = "sh -c 'pgrep -x rofi >/dev/null && pkill -x rofi || rofi -show drun'"

-- ALT + Enter -> terminal
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal))

-- ALT + Q -> kill active window
hl.bind(mainMod .. " + Q", hl.dsp.window.close())

-- SUPER + SHIFT + Q
hl.bind(
    "SUPER + SHIFT + Q",
    hl.dsp.exec_cmd(
        "command -v systemctl >/dev/null 2>&1 && systemctl poweroff"
    )
)

-- SUPER + SHIFT + H
hl.bind(
    "SUPER + SHIFT + H",
    hl.dsp.exec_cmd("systemctl sleep")
)

-- SUPER + E
hl.bind(
    "SUPER + E",
    hl.dsp.exec_cmd(fileManager)
)

-- ALT + V
hl.bind(
    mainMod .. " + V",
    hl.dsp.window.float({ action = "toggle" })
)

-- CTRL + Space
hl.bind(
    "CTRL + Space",
    hl.dsp.exec_cmd(menu)
)

-- SUPER + SHIFT + R
hl.bind(
    "SUPER + SHIFT + R",
    hl.dsp.exec_cmd("reboot")
)

hl.bind(
    "SUPER + SHIFT + H",
    hl.dsp.exec_cmd("systemctl hibernate")
)






-- -----------------------
-- ---- APPLICATIONS -----
-- -----------------------

hl.bind("SUPER + 1", hl.dsp.exec_cmd("firefox"))
hl.bind("SUPER + 2", hl.dsp.exec_cmd("code"))
hl.bind("SUPER + 3", hl.dsp.exec_cmd("spotify"))
hl.bind("SUPER + 4", hl.dsp.exec_cmd("zapzap"))











-- -----------------------
-- ---- WORKSPACES -------
-- -----------------------

for i = 1, 10 do
    local key = i % 10

    hl.bind(
        mainMod .. " + " .. key,
        hl.dsp.focus({ workspace = i })
    )

    hl.bind(
        mainMod .. " + SHIFT + " .. key,
        hl.dsp.window.move({ workspace = i })
    )
end

-- -----------------------
-- ---- FOCUS MOVEMENT ---
-- -----------------------

hl.bind(
    mainMod .. " + h",
    hl.dsp.focus({ direction = "left" })
)

hl.bind(
    mainMod .. " + l",
    hl.dsp.focus({ direction = "right" })
)

hl.bind(
    mainMod .. " + left",
    hl.dsp.focus({ direction = "left" })
)

hl.bind(
    mainMod .. " + right",
    hl.dsp.focus({ direction = "right" })
)

-- -----------------------
-- ---- SCREENSHOTS ------
-- -----------------------

hl.bind(
    "SUPER + SHIFT + S",
    hl.dsp.exec_cmd("hyprshot -m region")
)

hl.bind(
    "PRINT",
    hl.dsp.exec_cmd("hyprshot -m window")
)

-- -----------------------
-- ---- LOCK SCREEN ------
-- -----------------------

hl.bind(
    "SUPER + SHIFT + L",
    hl.dsp.exec_cmd("hyprlock")
)
-- -----------------------
-- ----COLOR PICKER ------
-- -----------------------
hl.bind(
    "SUPER + SHIFT + C",
    hl.dsp.exec_cmd("hyprpicker -a")
)


-- -----------------------
-- ---- SPECIAL WS -------
-- -----------------------

hl.bind(
    mainMod .. " + M",
    hl.dsp.workspace.toggle_special("magic")
)

hl.bind(
    mainMod .. " + SHIFT + M",
    hl.dsp.window.move({
        workspace = "special:magic"
    })
)

-- -----------------------
-- ---- SCROLL WS --------
-- -----------------------

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- -----------------------
-- ---- MOUSE BINDS ------
-- -----------------------

-- ALT + Right Mouse = move window
hl.bind(
    mainMod .. " + mouse:273",
    hl.dsp.window.drag(),
    { mouse = true }
)

-- ALT + Scroll press = toggle floating
hl.bind(
    mainMod .. " + mouse:274",
    hl.dsp.window.float({ action = "toggle" }),
    { mouse = true }
)

-- ALT + Left Mouse = resize window
hl.bind(
    mainMod .. " + mouse:272",
    hl.dsp.window.resize(),
    { mouse = true }
)

-- -----------------------
-- ---- AUDIO KEYS -------
-- -----------------------

hl.bind(
    "XF86AudioRaiseVolume",
    hl.dsp.exec_cmd(
        "wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
    ),
    { locked = true, repeating = true }
)

hl.bind(
    "XF86AudioLowerVolume",
    hl.dsp.exec_cmd(
        "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
    ),
    { locked = true, repeating = true }
)

hl.bind(
    "XF86AudioMute",
    hl.dsp.exec_cmd(
        "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
    ),
    { locked = true, repeating = true }
)

hl.bind(
    "XF86AudioMicMute",
    hl.dsp.exec_cmd(
        "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
    ),
    { locked = true, repeating = true }
)

-- -----------------------
-- ---- BRIGHTNESS -------
-- -----------------------

hl.bind(
    "XF86MonBrightnessUp",
    hl.dsp.exec_cmd(
        "brightnessctl set +10%"
    ),
    { locked = true, repeating = true }
)

hl.bind(
    "XF86MonBrightnessDown",
    hl.dsp.exec_cmd(
        "brightnessctl set 10%-"
    ),
    { locked = true, repeating = true }
)

-- -----------------------
-- ---- PLAYERCTL --------
-- -----------------------

hl.bind(
    mainMod .. " + XF86AudioRaiseVolume",
    hl.dsp.exec_cmd("playerctl next"),
    { locked = true }
)

hl.bind(
    mainMod .. " + XF86AudioLowerVolume",
    hl.dsp.exec_cmd("playerctl play-pause"),
    { locked = true }
)

hl.bind(
    mainMod .. " + XF86AudioMicMute",
    hl.dsp.exec_cmd("playerctl previous"),
    { locked = true }

)

hl.bind(
    "switch:on:Lid Switch",
    hl.dsp.exec_cmd(
        "pidof hyprlock || hyprlock --immediate --immediate-render"
    ),
    { locked = true }
)

hl.bind(
    "switch:off:Lid Switch",
    hl.dsp.exec_cmd(
        "hyprctl dispatch dpms on"
    ),
    { locked = true }
)