//********************
// 		Cloaks
//********************
/obj/item/clothing/suit/hooded/cloak/tajaran
	icon = 'mod_celadon/_storge_icons/icons/items/obj/tajara_items.dmi'
	mob_overlay_icon = 'mod_celadon/_storge_icons/icons/items/overlay/tajara_items_overlay.dmi'
	lefthand_file = 'icons/mob/inhands/clothing/suits_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/clothing/suits_righthand.dmi'
	slot_flags = ITEM_SLOT_OCLOTHING | ITEM_SLOT_NECK
	name = "gruff cloak"
	desc = "A cloak designated for the lowest classes."
	icon_state = "taj_cloak"
	item_state = "taj_cloak"
	hoodtype = /obj/item/clothing/head/hooded/cloakhood/tajaran

/obj/item/clothing/head/hooded/cloakhood/tajaran
	icon = 'mod_celadon/_storge_icons/icons/items/obj/tajara_items.dmi'
	mob_overlay_icon = 'mod_celadon/_storge_icons/icons/items/overlay/tajara_items_overlay.dmi'
	flags_inv = HIDEEARS | HIDEEYES |HIDEHAIR | HIDEFACIALHAIR
	name = "gruff cloak"
	desc = "A cloak designated for the lowest classes."
	icon_state = "taj_cloak_full"
	item_state = "taj_cloak_full"

/obj/item/clothing/suit/hooded/cloak/tajaran/fancy
	name = "fancy cloak"
	desc = "A fancy black cloak."
	icon_state = "hb_cloak"
	item_state = "hb_cloak"
	hoodtype = /obj/item/clothing/head/hooded/cloakhood/tajaran/fancy

/obj/item/clothing/head/hooded/cloakhood/tajaran/fancy
	name = "fancy cloak"
	desc = "A fancy black cloak."
	icon_state = "hb_cloak_hat"
	item_state = "hb_cloak_hat"

/obj/item/clothing/suit/hooded/cloak/tajaran/amohda
	name = "amohdan cloak"
	desc = "Originally used by the Amohdan swordsmen before the First Revolution, this cloak is now commonly worn by the island population."
	icon_state = "amohda_cloak"
	item_state = "amohda_cloak"
	hoodtype = /obj/item/clothing/head/hooded/cloakhood/tajaran/amohda

/obj/item/clothing/head/hooded/cloakhood/tajaran/amohda
	name = "amohdan cloak"
	desc = "Originally used by the Amohdan swordsmen before the First Revolution, this cloak is now commonly worn by the island population."
	icon_state = "amohda_cloak_hat"
	item_state = "amohda_cloak_hat"

/obj/item/clothing/suit/hooded/cloak/tajaran/winter
	name = "winter cloak"
	desc = "A simple wool cloak used during the early days of the lesser winter."
	icon_state = "winter_cloak"
	item_state = "winter_cloak"
	hoodtype = /obj/item/clothing/head/hooded/cloakhood/tajaran/winter

/obj/item/clothing/head/hooded/cloakhood/tajaran/winter
	name = "winter cloak"
	desc = "A simple wool cloak used during the early days of the lesser winter."
	icon_state = "winter_cloak_hat"
	item_state = "winter_cloak_hat"

/obj/item/clothing/suit/hooded/cloak/tajaran/royalist
	name = "royalist cloak"
	desc = "A simple royalist colored cloak."
	icon_state = "royalist_cloak"
	item_state = "royalist_cloak"
	hoodtype = /obj/item/clothing/head/hooded/cloakhood/tajaran/royalist

/obj/item/clothing/head/hooded/cloakhood/tajaran/royalist
	name = "royalist cloak"
	desc = "A simple royalist colored cloak."
	icon_state = "royalist_cloak_hat"
	item_state = "royalist_cloak_hat"

/obj/item/clothing/suit/hooded/cloak/tajaran/maroon
	name = "maroon cloak"
	desc = "A simple maroon colored cloak."
	icon_state = "maroon_cloak"
	item_state = "maroon_cloak"
	hoodtype = /obj/item/clothing/head/hooded/cloakhood/tajaran/maroon

/obj/item/clothing/head/hooded/cloakhood/tajaran/maroon
	name = "maroon cloak"
	desc = "A simple maroon colored cloak."
	icon_state = "maroon_cloak_hat"
	item_state = "maroon_cloak_hat"

/obj/item/clothing/replica_trenchcoat
	icon = 'mod_celadon/_storge_icons/icons/items/obj/suits/cloaks.dmi'
	mob_overlay_icon = 'mod_celadon/_storge_icons/icons/items/mob/suits/cloaks.dmi'
	slot_flags = ITEM_SLOT_OCLOTHING | ITEM_SLOT_NECK
	name = "replica armored trenchcloak"
	desc = "This replica one appears to be designed to be draped over one's shoulders rather than worn normally.."
	icon_state = "trenchcloak"
	item_state = "trenchcloak"
	body_parts_covered = CHEST | ARMS | LEGS

// NT Cloaks //

/obj/item/clothing/neck/cloak/nanotrasen/cape
	name = "\improper Nanotrasen Officer's cape"
	desc = "Nanotrasen Cloak. This variant displays the wearer's affiliation with the NT crew."
	icon = 'mod_celadon/_storge_icons/icons/clothing/obj/cloak_nt.dmi'
	mob_overlay_icon = 'mod_celadon/_storge_icons/icons/clothing/overlay/cloak_nt.dmi'
	icon_state = "cape"
	item_state = "cape"

/obj/item/clothing/neck/cloak/nanotrasen/cape/lead
	name = "Nanotrasen sergeant's cloak"
	desc = "Nanotrasen Cloak. This variant displays the wearer's rank as a squad commander."
	icon_state = "squadcape"
	item_state = "squadcape"

/obj/item/clothing/neck/cloak/nanotrasen/cape/engi
	name = "Nanotrasen Engineer's cloak"
	desc = "Nanotrasen Cloak. This variant displays the wearer's rank as an officer with a enengineering specialization."
	icon_state = "engicape"
	item_state = "engicape"

/obj/item/clothing/neck/cloak/nanotrasen/cape/med
	name = "Nanotrasen Medic's cloak"
	desc = "Nanotrasen Cloak. This variant displays the wearer's rank as an officer with a medical specialization."
	icon_state = "medcape"
	item_state = "medcape"

/obj/item/clothing/neck/cloak/nanotrasen/cape/command
	name = "Nanotrasen Command officer's cloak"
	desc = "Nanotrasen Cloak. This variant displays the wearer's officer rank."
	icon_state = "commandcape"
	item_state = "commandcape"

/obj/item/clothing/neck/cloak/nanotrasen/cape/captain
	name = "Nanotrasen Captain's cloak"
	desc = "Nanotrasen Cloak. This variant displays the wearer's rank as a high-ranking officer."
	icon_state = "captaincape"
	item_state = "captaincape"
