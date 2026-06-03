-- Matuwall daemon
-- Recommended (if you use UWSM):
hl.exec_cmd("uwsm app -- matuwall --daemon")
-- If you are not using UWSM
-- hl.exec_once("matuwall --daemon")

-- Window Mode
hl.window_rule({
    name = "float true",
    match = { class = "com\\.kwimy\\.Matuwall" }
})
hl.window_rule({
    name = "animation slide top",
    match = { class = "com\\.kwimy\\.Matuwall" }
})
hl.window_rule({
    name = "rounding 15",
    match = { class = "com\\.kwimy\\.Matuwall" }
})
hl.window_rule({
    name = "border_size 0",
    match = { class = "com\\.kwimy\\.Matuwall" }
})
hl.window_rule({
    name = "rounding_power 2",
    match = { class = "com\\.kwimy\\.Matuwall" }
})
hl.window_rule({
    name = "no_shadow on",
    match = { class = "com\\.kwimy\\.Matuwall" }
})

-- Panel Mode
hl.layer_rule({
    name = "blur on",
    match = { namespace = "matuwall" }
})
hl.layer_rule({
    name = "ignore_alpha 0.5",
    match = { namespace = "matuwall" }
})

-- Backdrop
hl.layer_rule({
    name = "animation fade",
    match = { namespace = "matuwall-backdrop" }
})
-- hl.layer_rule({
--     name = "blur on",
--     match = { namespace = "matuwall-backdrop" }
-- })
-- hl.layer_rule({
--     name = "ignore_alpha 0.2",
--     match = { namespace = "matuwall-backdrop" }
-- })

-- Keybinds
-- Toggle
hl.bind("SUPER + W", hl.dsp.exec_cmd("matuwall --toggle"))
-- Reload daemon
-- hl.bind("CTRL + W", hl.dsp.exec_cmd("matuwall --reload"))
