local terminal    = "kitty"
local fileManager = "dolphin"
local menu        = "pkill rofi || bash ~/.config/rofi/launchers/type-4/launcher.sh"

hl.on("hyprland.start", function () 
  hl.exec_cmd("hypridle")
  hl.exec_cmd("nm-applet")
  hl.exec_cmd(terminal)
  hl.exec_cmd("awww-daemon")
  hl.exec_cmd("waybar & hyprpaper")
end)
