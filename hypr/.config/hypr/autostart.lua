local terminal = "kitty"

hl.on("hyprland.start", function()
	-- hl.exec_cmd("hypridle")
	hl.exec_cmd("settings set org.gnome.desktop.interface cursor-theme BreezeX-RosePine-Linux")
	hl.exec_cmd(terminal)
	hl.exec_cmd("awww-daemon")
	hl.exec_cmd("waybar")
end)
