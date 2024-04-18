/obj/item/clothing/suit/apparel
	name = "Apparel of Nothing"
	desc = "Ты блять как это вообще видишь? А ну удаляй давай, щитспавнер хуев."
	icon = 'mod_celadon/elysium_stuff/icons/obj/suits.dmi'
	mob_overlay_icon = 'mod_celadon/elysium_stuff/icons/mob/suit.dmi'

/obj/item/clothing/suit/apparel/black
	name = "Чёрная накидка"
	desc = "Распространённая на территории Республики Элизиум накидка, являющаяся частью традиционной повседневной одежды."
	icon_state = "apparel_black"
	mob_overlay_state = "apparel_black"
	allowed = list(/obj/item/melee/skimitar)

/obj/item/clothing/suit/apparel/white
	name = "Белая накидка"
	desc = "Распространённая на территории Республики Элизиум накидка, являющаяся частью традиционной повседневной одежды."
	icon_state = "apparel_white"
	mob_overlay_state = "apparel_white"
	allowed = list(/obj/item/melee/skimitar)

/obj/item/clothing/suit/apparel/green
	name = "Зелёная накидка"
	desc = "Распространённая на территории Республики Элизиум накидка, являющаяся частью традиционной повседневной одежды."
	icon_state = "apparel_green"
	mob_overlay_state = "apparel_green"
	allowed = list(/obj/item/melee/skimitar)

/obj/item/clothing/suit/apparel/black/long
	name = "Чёрная длинная накидка"
	desc = "Распространённая на территории Республики Элизиум накидка, являющаяся частью традиционной повседневной одежды."
	icon_state = "long_apparel_black"
	mob_overlay_state = "long_apparel_black"
	allowed = list(/obj/item/melee/skimitar)

/obj/item/clothing/suit/apparel/white/long
	name = "Белая длинная накидка"
	desc = "Распространённая на территории Республики Элизиум накидка, являющаяся частью традиционной повседневной одежды."
	icon_state = "long_apparel_white"
	mob_overlay_state = "long_apparel_white"
	allowed = list(/obj/item/melee/skimitar)

/obj/item/clothing/suit/space/elysm
	name = "Void"
	desc = "Этого тут быть не должно.."
	icon = 'mod_celadon/elysium_stuff/icons/obj/space_item.dmi'
	mob_overlay_icon = 'mod_celadon/elysium_stuff/icons/mob/spacesuits.dmi'

/obj/item/clothing/suit/space/elysm/junk
	name = "Junk EVA Suit"
	desc = "Костюм ВКД, собраный из мусора.. Каким-то образом справляется с космическим вакуумом.."
	icon_state = "space_junk"
	mob_overlay_state = "space_junk"
	armor = list("melee" = -10, "bullet" = -10, "laser" = 0, "energy" = 0, "bomb" = -20, "bio" = 50, "rad" = 60, "fire" = 0, "acid" = 0)
	slowdown = 0.5
	allowed = list(/obj/item/tank/internals, /obj/item/flashlight)

/obj/item/clothing/suit/space/elysm/EVA_armored
	name = "Elysium EVA Suit"
	desc = "Костюм ВКД, собраный из неплохого сплава, с укреплёнными пластинами.. Хорошее начало для резни ксеномразей"
	icon_state = "space_elysium"
	mob_overlay_state = "space_elysium"
	armor = list("melee" = 30, "bullet" = 20, "laser" = 30, "energy" = 30, "bomb" = 20, "bio" = 50, "rad" = 60, "fire" = 60, "acid" = 75)
	slowdown = 0.5
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals, /obj/item/melee/skimitar)
