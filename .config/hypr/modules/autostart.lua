-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--

hl.on("hyprland.start", function()
	hl.exec_cmd("xrandr --output DP-3 --primary")
	hl.exec_cmd("foot", { workspace = "2" })
	hl.exec_cmd("noctalia")
	hl.exec_cmd("discord", { workspace = "6" })
	hl.exec_cmd("sonora", { workspace = "6" })
	hl.exec_cmd("zen-browser")
	hl.exec_cmd("hyprpm reload")
end)
