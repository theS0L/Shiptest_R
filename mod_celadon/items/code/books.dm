/obj/item/elysm_manual
	name = "Empty book"
	desc = "If you see this book, report to coders"
	icon = 'icons/obj/library.dmi'
	icon_state = "book2"

/obj/item/codespeak_manual/attack_self(mob/living/user)
	if(!isliving(user))
		return

	if(user.has_language(/datum/language/codespeak))
		to_chat(user, "<span class='boldwarning'>You start skimming through [src], but you already know Codespeak.</span>")
		return

	to_chat(user, "<span class='boldannounce'>You start skimming through [src], and suddenly your mind is filled with codewords and responses.</span>")
	user.grant_language(/datum/language/codespeak, TRUE, TRUE, LANGUAGE_MIND)

	use_charge(user)

/obj/item/codespeak_manual/attack(mob/living/M, mob/living/user)
	if(!istype(M) || !istype(user))
		return
	if(M == user)
		attack_self(user)
		return

	playsound(loc, "punch", 25, TRUE, -1)

	if(M.stat == DEAD)
		M.visible_message("<span class='danger'>[user] smacks [M]'s lifeless corpse with [src].</span>", "<span class='userdanger'>[user] smacks your lifeless corpse with [src].</span>", "<span class='hear'>You hear smacking.</span>")
	else if(M.has_language(/datum/language/codespeak))
		M.visible_message("<span class='danger'>[user] beats [M] over the head with [src]!</span>", "<span class='userdanger'>[user] beats you over the head with [src]!</span>", "<span class='hear'>You hear smacking.</span>")
	else
		M.visible_message("<span class='notice'>[user] teaches [M] by beating [M.p_them()] over the head with [src]!</span>", "<span class='boldnotice'>As [user] hits you with [src], codewords and responses flow through your mind.</span>", "<span class='hear'>You hear smacking.</span>")
		M.grant_language(/datum/language/codespeak, TRUE, TRUE, LANGUAGE_MIND)
		use_charge(user)

The book's cover reads: \"Codespeak(tm) - Secure your communication with metaphors so elaborate, they seem randomly generated!\
