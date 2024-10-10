// Миссия на изучение и поиск ионного шторма
// Все миссии тут code/modules/overmap/missions/research_mission.dm
/datum/mission/research/ion
	name = "Ion storm research mission"
	desc = "We require data on the behavior of ion storms in the system for an ongoing study. \
			Please anchor the attached sensor array to your ship and fly it through the storms. \
			It must be powered to collect the data."
	value = 3500
	objective_type = /datum/overmap/event/emp

// Сам Ионный шторм
// Остальные ивенты тут code/modules/overmap/objects/event_datum.dm
///ION STORM - explodes your IPCs
/datum/overmap/event/emp
	name = "ion storm (moderate)"
	desc = "A heavily ionized area of space, prone to causing electromagnetic pulses in ships"
	token_icon_state = "ion1"
	spread_chance = 20
	chain_rate = 2
	chance_to_affect = 20
	var/strength = 4

/datum/overmap/event/emp/Initialize(position, ...)
	. = ..()
	token.icon_state = "ion[rand(1, 4)]"
	token.color = "#7cb4d4"
	token.light_color = "#7cb4d4"
	token.update_appearance()

/datum/overmap/event/emp/affect_ship(datum/overmap/ship/controlled/S)
	var/area/source_area = pick(S.shuttle_port.shuttle_areas)
	source_area.set_fire_alarm_effect()
	var/source_object = pick(source_area.contents)
	empulse(get_turf(source_object), round(rand(strength / 2, strength)), rand(strength, strength * 2))
	for(var/mob/M as anything in GLOB.player_list)
		if(S.shuttle_port.is_in_shuttle_bounds(M))
			M.playsound_local(S.shuttle_port, 'sound/weapons/ionrifle.ogg', strength)

/datum/overmap/event/electric/affect_ship(datum/overmap/ship/controlled/S)
	var/datum/virtual_level/ship_vlevel = S.shuttle_port.get_virtual_level()
	var/turf/source = ship_vlevel.get_side_turf(pick(GLOB.cardinals))
	tesla_zap(source, 10, TESLA_DEFAULT_POWER, zap_flag)
	for(var/mob/M as anything in GLOB.player_list)
		if(S.shuttle_port.is_in_shuttle_bounds(M))
			M.playsound_local(source, 'sound/magic/lightningshock.ogg', rand(min_damage / 10, max_damage / 10))

/datum/overmap/event/emp/minor
	name = "ion storm (minor)"
	chain_rate = 1
	strength = 1
	chance_to_affect = 15

/datum/overmap/event/emp/major
	name = "ion storm (major)"
	chance_to_affect = 25
	chain_rate = 4
	strength = 6





/datum/overmap/event/electric/minor
	name = "electrical storm (minor)"
	spread_chance = 40
	chain_rate = 2
	max_damage = 10
	min_damage = 3

/datum/overmap/event/electric/major
	name = "electrical storm (major)"
	spread_chance = 15
	chain_rate = 6
	max_damage = 20
	min_damage = 10
	zap_flag = ZAP_TESLA_FLAGS
