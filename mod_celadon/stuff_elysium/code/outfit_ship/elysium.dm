/datum/outfit/job/elysium
	name = "Elysium - Base Outfit"
	job_icon = "captain"
	jobtype = /datum/job/captain

	backpack = null
	head = /obj/item/clothing/head/shemag/green
	uniform = /obj/item/clothing/under/color/darkgreen
	shoes = /obj/item/clothing/shoes/sneakers/black
	id = /obj/item/card/id/silver

/datum/outfit/job/elysium/proc/get_elysium_access(mob/living/carbon/human/H)
	var/obj/item/storage/wallet/W = null
	for (var/obj/item/O in H.contents)
		if (istype(O, /obj/item/storage/wallet))
			W = O
			break
	if (W)
		var/obj/item/card/id/I = null
		for (var/obj/item/O in W.contents)
			if (istype(O, /obj/item/card/id/silver))
				I = O
				break
		if (I)
			I.access = list(ACCESS_MAINT_TUNNELS)
			I.update_label()
		W.combined_access = list()
		for (var/obj/item/card/id/card in W.contents)
			W.combined_access |= card.access

/datum/outfit/job/elysium/captain
	name = "Elysium - Caid"
	job_icon = "captain"
	jobtype = /datum/job/captain

	backpack = /obj/item/storage/backpack/satchel/leather
	gloves = /obj/item/clothing/gloves/fingerless
	back = /obj/item/storage/backpack/satchel/leather
	uniform = /obj/item/clothing/under/color/darkgreen
	shoes = /obj/item/clothing/shoes/sneakers/sandals

/datum/outfit/job/elysium/captain/post_equip(mob/living/carbon/human/H)
	. = ..()
	get_elysium_access(H)

/datum/outfit/job/elysium/security
	name = "Elysium - Mukatell"
	job_icon = "securityofficer"
	jobtype = /datum/job/officer

	suit = /obj/item/clothing/suit/armor/vest/elysium
	gloves = /obj/item/clothing/gloves/fingerless
	mask = /obj/item/clothing/mask/bandana/green
	backpack = /obj/item/storage/backpack/satchel/sec
	uniform = /obj/item/clothing/under/utility
	shoes = /obj/item/clothing/shoes/sneakers/black
	head = /obj/item/clothing/head/helmet/m10_elysium
	backpack_contents = list(/obj/item/kitchen/knife/switchblade)

/datum/outfit/job/elysium/security/post_equip(mob/living/carbon/human/H)
	. = ..()
	get_elysium_access(H)

/datum/outfit/job/elysium/assistant
	name = "Elysium - Ahisa`i"
	job_icon = "assistant"
	jobtype = /datum/job/assistant

	suit = /obj/item/clothing/suit/apparel/black
	gloves = /obj/item/clothing/gloves/fingerless
	head = /obj/item/clothing/head/shemag/white
	backpack = /obj/item/storage/backpack/satchel
	uniform = /obj/item/clothing/under/utility
	shoes = /obj/item/clothing/shoes/sneakers/black

/datum/outfit/job/elysium/assistant/post_equip(mob/living/carbon/human/H)
	. = ..()
	get_elysium_access(H)
