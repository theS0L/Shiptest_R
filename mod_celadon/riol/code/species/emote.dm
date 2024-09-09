/datum/emote/living/carbon/human/riol/can_run_emote(mob/user, status_check = TRUE , intentional)
	if(!..())
		return FALSE

	if (!isriol(user))
		return FALSE

	return TRUE

// /datum/emote/living/carbon/human/riol/can_run_emote(mob/user, status_check = TRUE, intentional = FALSE)
// 	var/organ = user.get_organ_slot(ORGAN_SLOT_TONGUE)
// 	if(istype(organ, /obj/item/organ/internal/tongue/riol))
// 		return TRUE && ..()

/datum/emote/living/carbon/human/riol/howl
	key = "howl"
	key_third_person = "howls"
	message = "воет."
	message_mime = "делает вид, что воет."
	message_param = "воет на %t."
	emote_type = EMOTE_AUDIBLE | EMOTE_VISIBLE
	cooldown = 10 SECONDS

/datum/emote/living/carbon/human/riol/howl/get_sound(mob/living/user)
	return 'mod_celadon/_storge_sounds/sound/riol/howl.ogg'

/datum/emote/living/carbon/human/riol/growl
	key = "growl"
	key_third_person = "growls"
	message = "рычит."
	message_mime = "бусшумно рычит."
	message_param = "рычит на %t."
	emote_type = EMOTE_AUDIBLE | EMOTE_VISIBLE

/datum/emote/living/carbon/human/riol/get_sound(mob/living/user)
	return pick(
		'mod_celadon/_storge_sounds/sound/riol/growl1.ogg',
		'mod_celadon/_storge_sounds/sound/riol/growl2.ogg',
		'mod_celadon/_storge_sounds/sound/riol/growl3.ogg',
	)
