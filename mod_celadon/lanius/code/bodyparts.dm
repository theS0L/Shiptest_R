///состав:
/obj/item/organ/tongue/lanius
	name = "lanius jaw"
	desc = "Jaw of one of this lanius thing.. Better brought it back to him."
	icon = 'mod_celadon/_storge_icons/icons/lanius/lanius_organs.dmi'
	icon_state = "tongue"
	decay_factor = 0
	var/static/list/languages_possible_lanius = typecacheof(list(
		/datum/language/lanius_rattle
	))

/obj/item/organ/tongue/lanius/Initialize(mapload)
	. = ..()
	languages_possible = languages_possible_lanius

/obj/item/organ/eyes/lanius
/obj/item/organ/heart/lanius
	name = "lanius core"
	desc = "This is core of every lanius. Where did you get this?"
	icon = 'mod_celadon/_storge_icons/icons/lanius/lanius_organs.dmi'
	icon_state = "heart"
	decay_factor = 0
/obj/item/organ/liver/lanius
/obj/item/organ/stomach/lanius
/obj/item/organ/ears/lanius

/obj/item/bodypart/head/lanius
	icon = 'mod_celadon/_storge_icons/icons/lanius/lanius_bodyparts.dmi'
	should_draw_greyscale = TRUE
	uses_mutcolor = TRUE
	limb_id = SPECIES_LANIUS
	bodytype = MOB_MINERAL  | BODYTYPE_HUMANOID

/obj/item/bodypart/chest/lanius
	icon = 'mod_celadon/_storge_icons/icons/lanius/lanius_bodyparts.dmi'
	should_draw_greyscale = TRUE
	uses_mutcolor = TRUE
	limb_id = SPECIES_LANIUS
	is_dimorphic = FALSE
	acceptable_bodytype = MOB_MINERAL | BODYTYPE_HUMANOID
	bodytype = MOB_MINERAL | BODYTYPE_HUMANOID

/obj/item/bodypart/l_arm/lanius
	icon = 'mod_celadon/_storge_icons/icons/lanius/lanius_bodyparts.dmi'
	should_draw_greyscale = TRUE
	uses_mutcolor = TRUE
	limb_id = SPECIES_LANIUS
	bodytype = MOB_MINERAL | BODYTYPE_HUMANOID

/obj/item/bodypart/r_arm/lanius
	icon = 'mod_celadon/_storge_icons/icons/lanius/lanius_bodyparts.dmi'
	should_draw_greyscale = TRUE
	uses_mutcolor = TRUE
	limb_id = SPECIES_LANIUS
	bodytype = MOB_MINERAL | BODYTYPE_HUMANOID

/obj/item/bodypart/leg/left/lanius
	icon = 'mod_celadon/_storge_icons/icons/lanius/lanius_bodyparts.dmi'
	should_draw_greyscale = TRUE
	uses_mutcolor = TRUE
	limb_id = SPECIES_LANIUS
	bodytype = MOB_MINERAL | BODYTYPE_HUMANOID

/obj/item/bodypart/leg/right/lanius
	icon = 'mod_celadon/_storge_icons/icons/lanius/lanius_bodyparts.dmi'
	should_draw_greyscale = TRUE
	uses_mutcolor = TRUE
	limb_id = SPECIES_LANIUS
	bodytype = MOB_MINERAL | BODYTYPE_HUMANOID

