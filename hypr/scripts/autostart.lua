-------------------
---- AUTOSTART ----
-------------------
hl.exec_cmd("notify-send 'Lua Config Loaded'")
hl.on("hyprland.start", function()
    hl.exec_cmd("mako")
    hl.exec_cmd("awww")
    hl.exec_cmd("spotify")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("systemctl --user start mpd.service")
    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")
    -- hl.exec_cmd("wl-clip-persist --clipboard regular &")
    hl.exec_cmd("pkill -f xwaylandvideobridge")
    hl.exec_cmd("systemctl --user enable mpd.service")
end)

 hl.window_rule({
    name = "spotify-workspace",
    match = { class = "Spotify" },
    workspace = "3 silent",
 })

hl.window_rule({
    name = "spotify-workspace",
    float = true,
    center = true,
    match = { class = "Spotify" },
    
 })

-- hl.window_rule({ match = { class = "Spotify" },        opacity = "0.9 0.9" })
hl.layer_rule({
  match        = { namespace = "Spotify" },
  blur         = true,
  ignore_alpha = 0.5,
})

-- hl.window_rule({ match = { class = "firefox" },        opacity = "1 1" })
hl.window_rule({ match = { class = "firefox" }, opaque = true })
hl.window_rule({ match = { class = "Spotify" }, opaque = false })
hl.window_rule({ match = { class = "firefox" }, no_blur = true })
hl.layer_rule({
  match        = { namespace = "rofi" },
  blur         = true,
  ignore_alpha = 0.5,
})