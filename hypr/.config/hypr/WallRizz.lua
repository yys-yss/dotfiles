-- 1. WallRizz Configuration Variables
local wallpaperDir = "/home/yousef/wallpapers/walls/"
local overlay_window_opacity = "0.8"

-- The launch command remains optimized with our 100ms delay fix
local WR_cmd = string.format(
	"kitty -o allow_remote_control=yes -o background_opacity=%s --title=WallRizz sh -c 'WallRizz -n -e -d %s -z list --no-enable-pagination'",
	overlay_window_opacity,
	wallpaperDir
)
local WR_random_cmd = string.format(
	'kitty -o allow_remote_control=yes --class=hidden --title=hidden sh -c "WallRizz -n -e -d %s -r"',
	wallpaperDir
)

-- 2. Ported Window Rules (Re-engineered to neutralize the terminal window)
hl.window_rule({
	match = { title = "WallRizz" },
	float = true,
	size = "1920 1080", -- Controls the dimensions. Width (60%) is wider than Height (40%).
	center = true, -- Keeps your new rectangle perfectly centered on screen
	animation = "slide top", -- Drops down smoothly from the top center
	-- rounding = 15,
	-- rounding_power = 2,
	-- border_size = 0,
	-- no_shadow = true,
	-- xray = true,
})
-- 3. Keybind Actions
hl.bind("F3", function()
	hl.exec_cmd(WR_cmd)
end)

hl.bind("SHIFT + F3", function()
	hl.exec_cmd(WR_random_cmd)
end)
