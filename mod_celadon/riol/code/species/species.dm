/mob/living/carbon/human
	var/skin_tone_riol = "Black"  //Skin tone riol

/mob/living/carbon/human/species/riol
	race = /datum/species/riol

/datum/species
	/// Does the species use skintones or not?
	var/use_skintoneriol = FALSE

/datum/species/riol
	name = "\improper Riol"
	id = SPECIES_RIOL
	loreblurb = "The Riol race is a species of feline-like bipeds hailing from the planet of Ahdomai in the \
	S'randarr system. They have been brought up into the space age by the Humans and Skrell, and have been \
	influenced heavily by their long history of Slavemaster rule. They have a structured, clan-influenced way \
	of family and politics. They prefer colder environments, and speak a variety of languages, mostly Siik'Maas, \
	using unique inflections their mouths form."

	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_PRIDE | MIRROR_MAGIC | RACE_SWAP | ERT_SPAWN | SLIME_EXTRACT

	disliked_food = VEGETABLES | FRUIT | GRAIN | GROSS
	liked_food = MEAT | RAW | DAIRY
	digitigrade_customization = DIGITIGRADE_OPTIONAL

	attack_verb = "slash"
	attack_sound = 'sound/weapons/slash.ogg'
	miss_sound = 'sound/weapons/slashmiss.ogg'

	species_traits = list(EYECOLOR, LIPS, HAIR, FACEHAIR, EMOTE_OVERLAY, MUTCOLORS, MUTCOLORS_SECONDARY, SKINNOSECOLORS, SKINRIOLCOLORS, EARSRIOLCOLORS, HEADRIOLCOLORS, NOSERIOLCOLORS, CHESTRIOLCOLORS, BODYRIOLCOLORS )
	mutant_bodyparts = list(
		"riol_ears",
		"riol_hairs",
		"riol_ears_markings",
		"riol_head_markings",
		"riol_nose_markings",
		"riol_facial_hairs",
		"riol_chest_markings",
		"riol_body_markings",
		"riol_tail_markings",
		"riol_tail",
		"riol_legs"
		)
	default_features = list(
		"mcolor" = "0F0",
		"riol_ears" = "Plain",
		"riol_hairs" = "Plain",
		"riol_ears_markings" = "None",
		"riol_head_markings" = "None",
		"riol_nose_markings" = "None",
		"riol_facial_hairs" = "None",
		"riol_chest_markings" = "None",
		"riol_body_markings" = "None",
		"riol_tail_markings" = "None",
		"riol_tail" = "long",
		"riol_legs" = "Normal Legs",
		"body_size" = "Normal"
		)
	// mutant_bodyparts = list(
	// 	"hair",
	// 	"head_markings",
	// 	"facial_hair",
	// 	"body_markings",
	// 	"tail_accessory",
	// 	"tail_markings"
	// 	)
	// default_features = list( // ОТРЕДАКТРОВАТЬ.................
	// 	"mcolor" = "0F0",
	// 	"hair" = "plain",
	// 	"riol_ears_markings" = "None",
	// 	"head_markings" = "None",
	// 	"riol_nose_markings" = "None",
	// 	"riol_facial_hairs" = "None",
	// 	"riol_chest_markings" = "None",
	// 	"body_markings" = "None",
	// 	"tail_markings" = "None",
	// 	"riol_tail" = "long",
	// 	"body_size" = "Normal"
	// 	)

	default_color = "424242"

	heatmod = 0.8
	coldmod = 1.2
	bodytemp_normal = HUMAN_BODYTEMP_NORMAL + 30
	bodytemp_heat_damage_limit = (HUMAN_BODYTEMP_NORMAL + 30) + 10
	bodytemp_cold_damage_limit = (HUMAN_BODYTEMP_NORMAL + 30) - 40

	meat = /obj/item/reagent_containers/food/snacks/meat/slab/human/mutant/riol 	//нарисовать/спиздить спрайт к нему
	//skinned_type = /obj/item/stack/sheet/animalhide/riol						//нужно сделать кожу из таяран и нарисовать/спиздить спрайт к нему

	species_language_holder = /datum/language_holder/riol

	ass_image = 'mod_celadon/_storge_icons/icons/ass/assfox.png'

	mutantears = /obj/item/organ/ears/riol		//нужно отделить уши от головы. и можно кинуть их в тот же файл. потом в органе прописать путь к файлу + имя файла
	mutanteyes = /obj/item/organ/eyes/riol
	mutanttongue = /obj/item/organ/tongue/riol
	mutant_organs = list(/obj/item/organ/tail/riol)

	bodytype = BODYTYPE_RIOL | BODYTYPE_ORGANIC

	species_chest = /obj/item/bodypart/chest/riol
	species_head = /obj/item/bodypart/head/riol
	species_l_arm = /obj/item/bodypart/l_arm/riol
	species_r_arm = /obj/item/bodypart/r_arm/riol
	species_l_leg = /obj/item/bodypart/leg/left/riol
	species_r_leg = /obj/item/bodypart/leg/right/riol
	species_digi_l_leg = /obj/item/bodypart/leg/left/riol/digitigrade
	species_digi_r_leg = /obj/item/bodypart/leg/right/riol/digitigrade

	species_robotic_chest = /obj/item/bodypart/chest/robot
	species_robotic_head = /obj/item/bodypart/head/robot
	species_robotic_l_arm = /obj/item/bodypart/l_arm/robot/surplus
	species_robotic_r_arm = /obj/item/bodypart/r_arm/robot/surplus
	species_robotic_l_leg = /obj/item/bodypart/leg/left/robot/surplus
	species_robotic_r_leg = /obj/item/bodypart/leg/right/robot/surplus

/datum/species/riol/random_name(gender,unique,lastname)
	//code by @valtor0
	/*
	var/static/list/riol_female_ru_endings_list = list("и","а","о","е","й","ь") // Customise this with ru_name_syllables changes.
	var/list/ru_name_syllables = list("кан","тай","кир","раи","кии","мир","кра","тэк","нал","вар","хар","марр","ран","дарр", \
	"мирк","ири","дин","манг","рик","зар","раз","кель","шера","тар","кей","ар","но","маи","зир","кер","нир","ра",\
	"ми","рир","сей","эка","гир","ари","нэй","нре","ак","таир","эрай","жин","мра","зур","рин","сар","кин","рид","эра","ри","эна")
	*/
	var/static/list/riol_female_en_endings_list = list("v","n","o","e","y","u") // Customise this with en_name_syllables changes.
	var/list/en_name_syllables = list("rur","ya","sen","rawr","bar","kuk","tek","kuat","uk","vu","vuh","tah","tch","sjz","auch", \
		"ist","yein","entch","zvich","tut","mipr","vo","bis","as","vor","nik","gro","al","anem","zanth","tzch","noch", \
		"hel","ischt","far","va","baram","yereng","tech","lach","sam","mak","lich","gen","or","ag","ekt","gek","stag","onn", \
		"bin","ket","yarl","volf","eyanech","kresvz","azunayn","ghchv")
	var/apostrophe = "’"
	var/new_name = ""
	var/full_name = ""

	for(var/i = 0; i<2; i++)
		for(var/x = rand(1,2); x>0; x--)
			new_name += pick_n_take(en_name_syllables)
		new_name += apostrophe
		apostrophe = ""
	full_name = "[capitalize(lowertext(new_name))]"
	if(gender == FEMALE)
		var/ending = copytext(full_name, -2)
		if(!(ending in riol_female_en_endings_list))
			full_name += "а"
	if(prob(75))
		full_name += " [pick(list("Hadii","Kaitam","Jan-Hazan","Nyrir’Ahan"))]" //"Хадии","Кайтам","Жан-Хазан","Нъярир’Ахан"
	else if(prob(80))
		full_name += " [pick(list("Anai-Sanday","Navarr-Sanday","Roky-Sanday","Shenuar-Sanday"))]" //"Энай-Сэндай","Наварр-Сэндай","Року-Сэндай","Шенуар-Сэндай"
	return full_name


/datum/species/start_wagging_tail(mob/living/carbon/human/H)
	if("riol_tail" in mutant_bodyparts)
		mutant_bodyparts -= "riol_tail"
		mutant_bodyparts -= "riol_tail_markings"
		mutant_bodyparts |= "waggingriol_tail"
		mutant_bodyparts |= "wagging_riol_tail_markings"

	return ..()

/datum/species/stop_wagging_tail(mob/living/carbon/human/H)
	if("waggingriol_tail" in mutant_bodyparts)
		mutant_bodyparts -= "waggingriol_tail"
		mutant_bodyparts -= "wagging_riol_tail_markings"
		mutant_bodyparts |= "riol_tail"
		mutant_bodyparts |= "riol_tail_markings"

	return ..()
