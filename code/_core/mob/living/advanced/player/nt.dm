/mob/living/advanced/player/nt/
	var/loadout/loadout_to_use
	class = /class/antagonist
	allow_save = FALSE

	damage_received_multiplier = 0.5

/mob/living/advanced/player/nt/proc/prepare()
	INITIALIZE(src)
	FINALIZE(src)
	stop_music_track(client)
	nutrition *= RAND_PRECISE(0.9,1)
	hydration *= RAND_PRECISE(0.9,1)

	var/species/S = SPECIES(species)

	sex = pick(MALE,FEMALE)
	gender = sex

	default_appearance()

	change_organ_visual("skin", desired_color = pick("#E0BCAA","#BC9E8F","#967F73","#7A675E"))

	var/hair_color = random_color()
	change_organ_visual("hair_head", desired_color = hair_color, desired_icon_state = pick(S.all_hair_head))
	if(sex == MALE && prob(25))
		change_organ_visual("hair_face", desired_color = hair_color, desired_icon_state = pick(S.all_hair_face))

	update_all_blends()

	equip_loadout(loadout_to_use)

	hook_faction()

	return TRUE

/mob/living/advanced/player/nt/proc/hook_faction()
	HOOK_ADD("post_death", "faction_ticket", src, src, .proc/nt_point_loss)
	return TRUE

/mob/living/advanced/player/nt/proc/nt_point_loss()
	var/gamemode/firefight/firefight = SSgamemode.active_gamemode
	var/gamemode/horde/horde = SSgamemode.active_gamemode
	if(istype(firefight))
		if(!isnull(firefight.team_points["unsc"]))
			firefight.team_points["unsc"] -= 1
	else if(istype(horde))
		if(!isnull(horde.team_points["unsc"]))
			horde.team_points["unsc"] -= 1
	for(var/obj/hud/button/ticket_counter/ticket_counter as anything in hud_ticket_counters)
		ticket_counter.update_name()

/mob/living/advanced/player/nt/default_appearance()
	var/species/S = SPECIES(species)
	handle_hairstyle_chargen(sex == MALE ? S.default_hairstyle_chargen_male : S.default_hairstyle_chargen_female,S.default_color_hair,FALSE)
	handle_beardstyle_chargen(1,S.default_color_hair,FALSE)
	handle_skincolor_chargen(S.default_color_skin,FALSE)
	handle_eyecolor_chargen(S.default_color_eye,FALSE)
	update_all_blends()
	return TRUE


/mob/living/advanced/player/nt/on_add_xp(var/experience/E,var/added_xp)

	. = ..()

	if(client) //Sometimes antags go afk.
		var/savedata/client/globals/G = GLOBALDATA(client.ckey)
		if(!G) return .
		if(!G.loaded_data["stored_experience"]) G.loaded_data["stored_experience"] = list()
		G.loaded_data["stored_experience"][E.id] += added_xp

	return .