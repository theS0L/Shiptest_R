/obj/item/binoculars
	name = "binoculars"
	desc = "Used for long-distance surveillance."
	item_state = "binoculars"
	icon_state = "binoculars"
	lefthand_file = 'icons/mob/inhands/items_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/items_righthand.dmi'
	slot_flags = ITEM_SLOT_NECK
	w_class = WEIGHT_CLASS_SMALL
	var/mob/listeningTo
	var/zoom_out_amt = 5.5
	var/zoom_amt = 10
