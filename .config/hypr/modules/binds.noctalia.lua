-- Set programs that you use
local terminal = "foot"
local fileManager = "nautilus"
local menu = "noctalia msg panel-toggle launcher"

local mainMod = "SUPER"
local secondMod = "ALT"

---------------------
---- KEYBINDINGS ----
---------------------
-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal))
local closeWindowBind = hl.bind(mainMod .. " + X", hl.dsp.window.close())
-- closeWindowBind:set_enabled(false)
--hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + T", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(menu))
--hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
--hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))    -- dwindle only

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + CONTROL + S", hl.dsp.window.move({ workspace = "special:magic" }))
hl.bind(secondMod .. " + S", hl.dsp.workspace.toggle_special("secret"))
hl.bind(secondMod .. " + CONTROL + S", hl.dsp.window.move({ workspace = "special:secret" }))
-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 10%+"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 10%-"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl --player sonora next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl --player sonora play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl --player sonora play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl --player sonora previous"), { locked = true })

-- split workspaces
package.path = package.path .. ";./?.lua;./?/init.lua"
local smw = require("plugins.split-monitor-workspaces")

smw.setup({
	workspace_count = 5, -- This will create 5 persistent workspaces on each monitor at startup
	monitor_priority = { "DP-3", "HDMI-A-1" },
	enable_persistent_workspaces = false,
})

for i = 1, smw.get_amount_of_workspaces() do
	local n = tostring(i)
	if n == "10" then
		n = "0"
	end -- Optional if you configured 10 workspaces: bind workspace 10 to SUPER + 0
	-- Switch to the Nth workspace on the currently focused monitor.
	hl.bind(mainMod .. " +" .. n, smw.workspace(n))
	-- Move the active window to the Nth workspace on the currently focused monitor silently (no focus change).
	hl.bind(mainMod .. " + SHIFT +" .. n, smw.move_to_workspace_silent(n))
end

--- Cycle workspaces on the current monitor.
--- Accepts "next", "prev", "+N", or "-N" (e.g. "+2" skips two workspaces at once. why would you want to do that? idk but you can).
hl.bind(mainMod .. " + U", smw.cycle_workspaces("next"))
hl.bind(mainMod .. " + I", smw.cycle_workspaces("prev"))
------------------------------------------------------------------------------------------------------------------------

hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd("noctalia msg screenshot-region"))

hl.bind("PRINT", hl.dsp.exec_cmd("~/.local/usr-scripts/mutemic"))

hl.bind("SHIFT + PRINT", hl.dsp.exec_cmd("~/.local/usr-scripts/mutemic"))

hl.bind(mainMod .. " + A", hl.dsp.exec_cmd("~/.local/usr-scripts/audio"))

hl.bind(mainMod .. " + SHIFT + K", hl.dsp.exec_cmd("kpl"))

hl.bind(mainMod .. " + ALT + S", hl.dsp.exec_cmd("noctalia msg panel-toggle session"))

hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = "fullscreen", layout_aware = "false", action = "toggle" }))

hl.bind(mainMod .. " + M", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }))

hl.bind(mainMod .. " + Equal", hl.dsp.window.resize({ x = 100, y = 0, relative = true }))
hl.bind(mainMod .. " + SHIFT + Equal", hl.dsp.window.resize({ x = 0, y = 100, relative = true }))

hl.bind(mainMod .. " + Minus", hl.dsp.window.resize({ x = -100, y = 0, relative = true }))
hl.bind(mainMod .. " + SHIFT + Minus", hl.dsp.window.resize({ x = 0, y = -100, relative = true }))

hl.bind(mainMod .. " + CONTROL + M", hl.dsp.window.resize({ x = 1250, y = 1440, relative = false }))

hl.bind(mainMod .. " + CONTROL + H", hl.dsp.window.swap({ direction = "l" }))

hl.bind(mainMod .. " + CONTROL + L", hl.dsp.window.swap({ direction = "r" }))

hl.bind(mainMod .. " + CONTROL + J", hl.dsp.window.swap({ direction = "d" }))

hl.bind(mainMod .. " + CONTROL + K", hl.dsp.window.swap({ direction = "u" }))

hl.bind(mainMod .. " + SHIFT + Q", hl.dsp.exec_cmd("hyprshutdown"))

hl.bind(mainMod .. " + bracketleft", hl.dsp.layout("consume_or_expel prev"))

hl.bind(mainMod .. " + bracketright", hl.dsp.layout("consume_or_expel next"))

hl.bind(mainMod .. " + SHIFT + L", hl.dsp.focus({ monitor = "r" }))

hl.bind(mainMod .. " + SHIFT + H", hl.dsp.focus({ monitor = "l" }))

hl.bind(mainMod .. " + CONTROL + SHIFT + L", hl.dsp.window.move({ monitor = "r" }))

hl.bind(mainMod .. " + CONTROL + SHIFT + H", hl.dsp.window.move({ monitor = "l" }))

hl.bind(mainMod .. " + mouse_left", hl.dsp.focus({ direction = "left" }))

hl.bind(mainMod .. " + mouse_right", hl.dsp.focus({ direction = "right" }))

hl.bind("ALT + TAB", hl.dsp.exec_cmd("noctalia msg window-switcher hold"))

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "-1" }))

hl.bind(mainMod .. " + SHIFT + U", hl.dsp.window.move({ workspace = "-1" }))
hl.bind(mainMod .. " + SHIFT + I", hl.dsp.window.move({ workspace = "+1" }))

hl.bind(secondMod .. " + P", hl.dsp.exec_cmd("noctalia msg panel-toggle alexander/game-launcher:original"))
