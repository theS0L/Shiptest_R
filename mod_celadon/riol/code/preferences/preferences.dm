
/datum/preferences
	/// Nose skin color for riol
	// var/skin_tone_nose = "black"

	/// Body skin color for riol
	var/skin_tone_riol = "Black"

/datum/preferences/New(client/C)
	features += list(
		"riol_ears" = "Plain",
		"riol_hairs" = "Plain",
		"riol_ears_markings" = "None",
		"riol_head_markings" = "None",
		"riol_nose_markings" = "None",
		"riol_facial_hairs" = "None",
		"riol_chest_markings" = "None",
		"riol_body_markings" = "None",
		"riol_tail" = "Long"
	)

	// randomise[RANDOM_SKIN_TONE_NOSE] = TRUE
	randomise[RANDOM_SKIN_TONE_RIOL] = TRUE

	return ..()


/datum/preferences/process_link(mob/user, list/href_list)
	switch(href_list["task"])
		if("random")
			switch(href_list["preference"])
				if("s_tone_nose")
					skin_tone_nose = random_skin_tone_nose()
				// if("s_tone_riol")
				// 	skin_tone_riol = random_skin_tone_riol()
		if("input")
			switch(href_list["preference"])
				if("riol_ears")
					var/new_riol_ears
					new_riol_ears = input(user, "Choose your character's ears:", "Character Preference") as null|anything in GLOB.riol_ears_list
					if(new_riol_ears)
						features["riol_ears"] = new_riol_ears

				if("riol_hairs")
					var/new_riol_hairs
					new_riol_hairs = input(user, "Choose your character's hair:", "Character Preference") as null|anything in GLOB.riol_hairs_list
					if(new_riol_hairs)
						features["riol_hairs"] = new_riol_hairs

				if("riol_ears_markings")
					var/new_riol_ears_markings
					new_riol_ears_markings = input(user, "Choose your character's head markings:", "Character Preference") as null|anything in GLOB.riol_ears_markings_list
					if(new_riol_ears_markings)
						features["riol_ears_markings"] = new_riol_ears_markings

				if("riol_head_markings")
					var/new_riol_head_markings
					new_riol_head_markings = input(user, "Choose your character's head markings:", "Character Preference") as null|anything in GLOB.riol_head_markings_list
					if(new_riol_head_markings)
						features["riol_head_markings"] = new_riol_head_markings

				if("riol_nose_markings")
					var/new_riol_nose_markings
					new_riol_nose_markings = input(user, "Choose your character's nose markings:", "Character Preference") as null|anything in GLOB.riol_nose_markings_list
					if(new_riol_nose_markings)
						features["riol_nose_markings"] = new_riol_nose_markings

				if("riol_facial_hairs")
					var/new_riol_facial_hairs
					new_riol_facial_hairs = input(user, "Choose your character's face markings:", "Character Preference") as null|anything in GLOB.riol_facial_hairs_list
					if(new_riol_facial_hairs)
						features["riol_facial_hairs"] = new_riol_facial_hairs

				if("riol_chest_markings")
					var/new_riol_chest_markings
					new_riol_chest_markings = input(user, "Choose your character's chest markings:", "Character Preference") as null|anything in GLOB.riol_chest_markings_list
					if(new_riol_chest_markings)
						features["riol_chest_markings"] = new_riol_chest_markings

				if("riol_body_markings")
					var/new_riol_body_markings
					new_riol_body_markings = input(user, "Choose your character's body markings:", "Character Preference") as null|anything in GLOB.riol_body_markings_list
					if(new_riol_body_markings)
						features["riol_body_markings"] = new_riol_body_markings

				if("riol_tail")
					var/new_riol_tail
					new_riol_tail = input(user, "Choose your character's tail:", "Character Preference") as null|anything in GLOB.riol_tail_list
					if(new_riol_tail)
						features["riol_tail"] = new_riol_tail

				// if("s_tone_riol")
				// 	var/new_s_tone_riol = input(user, "Choose your character's skin-tone body:", "Character Preference")  as null|anything in GLOB.skin_tones_riol
				// 	if(new_s_tone_riol)
				// 		skin_tone_riol = new_s_tone_riol

				if("s_tone_nose")
					var/new_s_tone_nose = input(user, "Choose your character's skin-tone nose:", "Character Preference")  as null|anything in GLOB.skin_tones_nose
					if(new_s_tone_nose)
						skin_tone_nose = new_s_tone_nose
	return ..()


/datum/preferences/random_character(gender_override, antag_override = FALSE)
	. = ..()
	if(randomise[RANDOM_SKIN_TONE_NOSE])
		skin_tone_nose = random_skin_tone_nose()
