--------------------------
----  LOOKS AND FEEL  ----
--------------------------
-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
	general = {
		gaps_in = 5,
		gaps_out = 15,

		border_size = 2,
		col = {
			active_border = { colors = { "rgb(ffffff)" } },
			inactive_border = "rgb(1e1e2e)",
		},

		-- Set to true to enable resizing windows by clicking and dragging on borders and gaps
		resize_on_border = true,

		-- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
		allow_tearing = false,

		snap = {
			enabled = true,
		},

		layout = "scrolling",
	},

	cursor = {
		inactive_timeout = 3,
	},

	decoration = {
		rounding = 20,
		rounding_power = 2,

		-- Change transparency of focused and unfocused windows
		active_opacity = 1.0,
		inactive_opacity = 1.0,

		shadow = {
			enabled = true,
			range = 4,
			render_power = 3,
			color = 0xee1a1a1a,
		},

		blur = {
			enabled = true,
			size = 6,
			passes = 3,
			vibrancy = 0.1696,
			brightness = 0.7,
			variant = "frost",
		},
	},

	animations = {
		enabled = true,
	},

	binds = {
		movefocus_cycles_fullscreen = true,
	},
})

-------------------
----  LAYOUTS  ----
-------------------
-- See https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/ for more
hl.config({
	dwindle = {
		preserve_split = true, -- You probably want this
	},
})

-- See https://wiki.hypr.land/Configuring/Layouts/Master-Layout/ for more
hl.config({
	master = {
		new_status = "master",
	},
})

-- See https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/ for more
hl.config({
	scrolling = {
		fullscreen_on_one_column = true,
		follow_focus = 1,
	},
})

----------------
----  MISC  ----
----------------

hl.config({
	misc = {
		force_default_wallpaper = 0, -- Set to 0 or 1 to disable the anime mascot wallpapers
		disable_hyprland_logo = true, -- If true disables the random hyprland logo / anime girl background. :(
		vrr = 0,
	},

	debug = {
		disable_logs = false,
	},
})
