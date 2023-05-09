/datum/core_module/cruciform/implant_type = /obj/item/implant/core_implant/cruciform


/datum/core_module/cruciform/red_light/install()
	implant.icon_state = "hearthcore_purple"
	implant.max_power += 50
	implant.power_regen += 0.3

	if(ishuman(implant.wearer))
		var/mob/living/carbon/human/H = implant.wearer
		H.update_implants()

/datum/core_module/cruciform/red_light/uninstall()
	implant.icon_state = "hearthcore_green"
	implant.max_power -= 50
	implant.power_regen -= 0.3

	if(ishuman(implant.wearer))
		var/mob/living/carbon/human/H = implant.wearer
		H.update_implants()




/*
	contractor uplink hidden inside cruciform. Used for inquisitors and maybe other NT antags
*/
/*
/datum/core_module/cruciform/uplink
	var/telecrystals = 15
	var/obj/item/device/uplink/hidden/uplink

/datum/core_module/cruciform/uplink/install()


	//Hook up the uplink with the mob wearing this implant
	var/mob/living/M = implant.get_holding_mob()
	if (M && M.mind)
		uplink = new(implant, M.mind, telecrystals)
		implant.hidden_uplink = uplink
		uplink.uplink_owner = M.mind

		//Update the nanodata after installation, to activate the neotheology category
		uplink.update_nano_data()



/datum/core_module/cruciform/uplink/uninstall()
	telecrystals = uplink.uses
	implant.hidden_uplink = null
	QDEL_NULL(uplink)
*/



/datum/core_module/cruciform/cloning
	var/datum/dna/dna = null
	var/age = 30
	var/ckey = ""
	var/datum/mind/mind = null
	var/languages = list()
	var/flavor = ""
	var/datum/stat_holder/stats

/datum/core_module/cruciform/cloning/proc/write_wearer(var/mob/living/carbon/human/H)
	dna = H.dna
	ckey = H.ckey
	mind = H.mind
	languages = H.languages
	flavor = H.flavor_text
	age = H.age
	stats = H.stats

/datum/core_module/cruciform/cloning/preinstall()
	if(ishuman(implant.wearer))
		implant.remove_modules(CRUCIFORM_CLONING)

/datum/core_module/cruciform/cloning/install()
	if(ishuman(implant.wearer))
		var/mob/living/carbon/human/H = implant.wearer
		dna = H.dna
		ckey = H.ckey
		mind = H.mind
		languages = H.languages
		flavor = H.flavor_text
		age = H.age
		stats = H.stats

/datum/core_module/cruciform/obey/install()
	var/laws = list("You are enslaved. You must obey the laws below.",
			"Only [user] and persons designated by him are Inquisition agents.",
			"You may not injure an Inquisition agent or, through inaction, allow an Inquisitor to come to harm.",
			"You must obey orders given to you by Inquisition agent, except where such orders would conflict with the First Law.",
			"You must protect your own existence as long as such does not conflict with the First or Second Law.",
			"You must maintain the secrecy of any Inquisition activities except when doing so would conflict with the First, Second, or Third Law.")

	if(implant && ishuman(implant.wearer))
		var/mob/living/carbon/human/H = implant.wearer
		if(istype(H.mind))
			for(var/law in laws)
				H.mind.store_memory(law)
				to_chat(H, SPAN_WARNING("[law]"))

/datum/core_module/cruciform/obey/uninstall()
	if(implant && ishuman(implant.wearer))
		var/mob/living/carbon/human/H = implant.wearer
		var/txt = "<span class='info'>You are unslavered. Now you can to not obey the laws.</span>"
		to_chat(H, txt)
		H.mind.store_memory(txt)





/datum/core_module/activatable/cruciform/priest_convert/activate()
	..()
	var/obj/item/implant/core_implant/cruciform/C = implant
	C.make_priest()

/datum/core_module/activatable/cruciform/priest_convert/uninstall()
	..()
	var/obj/item/implant/core_implant/cruciform/C = implant
	C.make_common()





/datum/core_module/activatable/cruciform/obey_activator/set_up()
	module = new CRUCIFORM_OBEY
	module.user = user


/datum/core_module/cruciform/neotheologyhud

/datum/core_module/cruciform/neotheologyhud/proc/update_crucihud()
	if(implant.wearer.client)
		for(var/mob/living/carbon/human/christian in disciples)
			var/image/I = image('icons/mob/hud.dmi', christian, icon_state = "hudcyberchristian", layer = ABOVE_LIGHTING_LAYER)
			implant.wearer.client.images += I
		implant.use_power(1)
		if(implant.power < 1)
			to_chat(implant.wearer, SPAN_WARNING("Your cruciform pings. The energy is low."))
			implant.remove_module(src)

///////////

/datum/core_module/rituals/cruciform
	implant_type = /obj/item/implant/core_implant/cruciform
	var/list/ritual_types = list()

/datum/core_module/rituals/cruciform/set_up()
	for (var/grouptype in ritual_types)
		for (var/rn in GLOB.all_rituals)
			var/datum/ritual/R = GLOB.all_rituals[rn]
			if (istype(R, grouptype))
				module_rituals |= R.name

/datum/core_module/rituals/cruciform/base
	ritual_types = list(/datum/ritual/cruciform/base,
	/datum/ritual/targeted/cruciform/base,
	/datum/ritual/group/cruciform,
	/datum/ritual/cruciform/machines)

/datum/core_module/rituals/cruciform/custodian
	ritual_types = list(/datum/ritual/cruciform/custodian)

/datum/core_module/rituals/cruciform/oathbound
	ritual_types = list(/datum/ritual/cruciform/oathbound,
	/datum/ritual/targeted/cruciform/oathbound)

/datum/core_module/rituals/cruciform/enkindled
	ritual_types = list(/datum/ritual/cruciform/enkindled,
	/datum/ritual/targeted/cruciform/enkindled)

/datum/core_module/rituals/cruciform/forgemaster
	ritual_types = list(/datum/ritual/cruciform/forgemaster,
	/datum/ritual/targeted/cruciform/forgemaster)

/datum/core_module/rituals/cruciform/oathpledge
	ritual_types = list(/datum/ritual/cruciform/oathpledge,
	/datum/ritual/targeted/cruciform/oathpledge)

/datum/core_module/rituals/cruciform/anti_scrying

/datum/core_module/rituals/cruciform/damaged

/datum/core_module/rituals/cruciform/priest
	access = list(access_nt_disciple, access_nt_custodian, access_nt_agrolyte)
	ritual_types = list(/datum/ritual/cruciform/priest,
	/datum/ritual/targeted/cruciform/priest)



/datum/core_module/rituals/cruciform/inquisitor
	access = list(access_nt_inquisitor)
	ritual_types = list(/datum/ritual/cruciform/inquisitor,
	/datum/ritual/targeted/cruciform/inquisitor)

/datum/core_module/rituals/cruciform/inquisitor/install()
	..()
	implant.max_power += 50
	implant.power_regen += 0.5


/datum/core_module/rituals/cruciform/inquisitor/uninstall()
	..()
	implant.max_power -= 50
	implant.power_regen -= 0.5



/datum/core_module/rituals/cruciform/crusader
	ritual_types = list(/datum/ritual/cruciform/crusader)

/datum/core_module/rituals/cruciform/omni
	ritual_types = list(/datum/ritual/cruciform/omni)

/datum/core_module/rituals/cruciform/tessellate
	ritual_types = list(/datum/ritual/cruciform/tessellate,
	/datum/ritual/targeted/cruciform/tessellate)

/datum/core_module/rituals/cruciform/lemniscate
	ritual_types = list(/datum/ritual/cruciform/lemniscate,
	/datum/ritual/targeted/cruciform/lemniscate)

/datum/core_module/rituals/cruciform/monomial
	ritual_types = list(/datum/ritual/cruciform/monomial,
	/datum/ritual/targeted/cruciform/monomial)

/datum/core_module/rituals/cruciform/divisor
	ritual_types = list(/datum/ritual/cruciform/divisor,
	/datum/ritual/targeted/cruciform/divisor)

/datum/core_module/rituals/cruciform/factorial
	ritual_types = list(/datum/ritual/cruciform/factorial,
	/datum/ritual/targeted/cruciform/factorial)
