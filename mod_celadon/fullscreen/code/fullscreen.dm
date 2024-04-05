// #define COMSIG_KB_CLIENT_FULLSCREEN_DOWN "keybinding_client_fullscreen_down"		// Перенесён в mod_celadon\__DEFINES\code\__DEFINES\fullscreen.dm

/client
	var/fullscreen = FALSE


/datum/keybinding/client/t_fullscreen
	hotkey_keys = list("F11")
	name = "change_fullscreen"
	full_name = "Set Fullscreen"
	description = "Set window to Fullscreen"
	keybind_signal = COMSIG_KB_CLIENT_FULLSCREEN_DOWN

/datum/keybinding/client/t_fullscreen/down(client/C)
	. = ..()
	C.toggle_fullscreen()


/client/verb/toggle_fullscreen()
	set name = "Toggle Fullscreen"
	set category = "OOC"

	fullscreen = !fullscreen

	if (fullscreen)
		winset(usr, "mainwindow", "on-size=")
		winset(usr, "mainwindow", "titlebar=false")
		winset(usr, "mainwindow", "can-resize=false")
		winset(usr, "mainwindow", "menu=")
		winset(usr, "mainwindow", "is-maximized=false")
		winset(usr, "mainwindow", "is-maximized=true")
	else
		winset(usr, "mainwindow", "titlebar=true")
		winset(usr, "mainwindow", "can-resize=true")
		winset(usr, "mainwindow", "menu=menu")
		winset(usr, "mainwindow", "is-maximized=false")
		winset(usr, "mainwindow", "on-size=fitviewport")

	fit_viewport()
