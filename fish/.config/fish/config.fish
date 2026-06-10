source /usr/share/cachyos-fish-config/cachyos-config.fish

export XDG_MENU_PREFIX=plasma-
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
alias fishconfig="nvim ~/.config/fish/config.fish"
export XDG_DATA_DIRS="$HOME/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share:$XDG_DATA_DIRS"

# Reboot and shutdown
abbr reboot "uwsm-app -- hyprshutdown -t 'Restarting...' --post-cmd 'reboot'"
abbr shutdown "uwsm-app -- hyprshutdown -t 'Shutting down...' --post-cmd 'shutdown -P now'"

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end
