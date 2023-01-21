local c = require('palette')
local theme = {}

-- Default settings
theme.font = "16px Source Code Pro"
theme.fg = c.fg0
theme.bg = c.bg0

-- Genaral colours
theme.success_fg = c.gr1
theme.loaded_fg = c.bu0
theme.error_fg = c.bg1
theme.error_bg = c.rd0

-- Warning colours
theme.warning_fg = c.bg1
theme.warning_bg = c.yw1

-- Notification colours
theme.notif_fg = c.bg1
theme.notif_bg = c.lg1
-- Menu colours
theme.menu_fg = c.fg0  
theme.menu_bg = c.bg1  
theme.menu_selected_fg = c.wh1 
theme.menu_selected_bg = c.bg3 
theme.menu_title_bg = c.bl1
theme.menu_primary_title_fg = c.wh0
theme.menu_secondary_title_fg = c.wh1

theme.menu_disabled_fg = c.fg2
theme.menu_disabled_bg = c.bg1
theme.menu_enabled_fg = c.fg0
theme.menu_enabled_bg = c.bg1
theme.menu_active_fg = c.cy1
theme.menu_active_bg = c.bg1

-- Proxy manager
theme.proxy_active_menu_fg = c.fg1
theme.proxy_active_menu_bg = c.bg1
theme.proxy_inactive_menu_fg = c.wh1
theme.proxy_inactive_menu_bg = c.bg1

-- Statusbar specific
theme.sbar_fg = c.fg0
theme.sbar_bg = c.bg2

-- Downloadbar specific
theme.dbar_fg = c.cy0
theme.dbar_bg = c.bg1
theme.dbar_error_fg = c.rd0

-- Input bar specific
theme.ibar_fg = c.fg0
theme.ibar_bg = c.bg2

-- Tab label
theme.tab_fg = c.fg0
theme.tab_bg = c.bg2
theme.tab_hover_bg = c.bg1
theme.tab_ntheme = c.bl1
theme.selected_fg = c.wh0
theme.selected_bg = c.bg0
theme.selected_ntheme = c.bl1
theme.loading_fg = c.bu0
theme.loading_bg = c.bg0

theme.selected_private_tab_bg = c.hfg
theme.private_tab_bg    = c.bl1

-- Trusted/untrusted ssl colours
theme.trust_fg = c.gr0
theme.notrust_fg = c.rd0

-- Follow mode hints
theme.hint_font = "10px monospace"
theme.hint_fg = c.fg0
theme.hint_bg = c.bg1
theme.hint_border = "0px"
theme.hint_opacity = "0.3"
theme.hint_overlay_bg = c.bg3
theme.hint_overlay_border = "0px"
theme.hint_overlay_selected_bg = c.bu1
theme.hint_overlay_selected_border = theme.hint_overlay_border

-- General colour pairings
theme.ok = { fg = c.gr0, bg = c.bg1 }
theme.warn = { fg = c.yw0, bg = c.bg1 }
theme.error = { fg = c.rd0, bg = c.bg1 }

return theme

-- vim: et:sw=4:ts=8:sts=4:tw=80
