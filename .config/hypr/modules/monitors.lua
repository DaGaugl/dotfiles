-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
	output = "DP-3",
	mode = "2560x1440@165.00",
	position = "0x0",
	scale = "1",
	vrr = false,
	supports_hdr = -1,
})

hl.monitor({
	output = "HDMI-A-1",
	mode = "1920x1080@60.00",
	position = "2560x340",
	scale = "1",
})
