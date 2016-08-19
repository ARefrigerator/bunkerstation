/datum/job/ghetto_doctor
	title = "Barber Surgeon"
	flag = GHETTODOC
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the hippocratic oath"
	selection_color = "#ffeef0"

	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		if(H.gender == "m")
			H.equip_or_collect(new /obj/item/clothing/under/rank/medical/ghetto(H), slot_w_uniform)
		else
			H.equip_or_collect(new /obj/item/clothing/under/rank/medical/ghetto/female(H), slot_w_uniform)
		H.equip_or_collect(new /obj/item/clothing/suit/storage/labcoat(H), slot_wear_suit)
		H.equip_or_collect(new /obj/item/clothing/shoes/white(H), slot_shoes)
		return 1

/datum/job/merchant
	title = "Merchant"
	flag = MERCHANT
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "yourself"
	selection_color = "#dddddd"

	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_or_collect(new /obj/item/clothing/under/rank/cargo(H), slot_w_uniform)
		H.equip_or_collect(new /obj/item/clothing/shoes/brown(H), slot_shoes)
		return 1

/datum/job/whore
	title = "Whore"
	flag = WHORE
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 4
	spawn_positions = 4
	supervisors = "the bartender"
	selection_color = "#e5a0ed"

	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_or_collect(new /obj/item/clothing/shoes/black(H), slot_shoes)
		H.equip_or_collect(new /obj/item/clothing/under/rank/whore(H), slot_w_uniform)
		return 1

/datum/job/farmer
	title = "Farmer"
	flag = FARMER
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = -1
	spawn_positions = 4
	supervisors = "yourself"
	selection_color = "#dddddd"

	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_or_collect(new /obj/item/clothing/under/rank/cargo(H), slot_w_uniform)
		H.equip_or_collect(new /obj/item/clothing/shoes/brown(H), slot_shoes)
		return 1

/datum/job/smith
	title = "Metalsmith"
	flag = SMITH
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = -1
	spawn_positions = 4
	supervisors = "yourself"
	selection_color = "#dddddd"

	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_or_collect(new /obj/item/clothing/under/rank/cargo(H), slot_w_uniform)
		H.equip_or_collect(new /obj/item/clothing/shoes/brown(H), slot_shoes)
		return 1

/datum/job/mercenary
	title = "Mercenary"
	flag = MERC
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = -1
	spawn_positions = 5
	supervisors = "the highest payer"
	selection_color = "#dddddd"

	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_or_collect(new /obj/item/clothing/shoes/black(H), slot_shoes)
		H.equip_or_collect(new /obj/item/clothing/suit/armor/vest(H), slot_wear_suit)
		H.equip_or_collect(new /obj/item/clothing/under/rank/bartender(H), slot_w_uniform)
		spawn(0)
			var/list/options = list()
			options["Powered Crossbow"] = "crossbow"
			options["Mosin Nagant"] = "nagant"
			options["Pistol"] = "detective_panther"
			options["Tactical Knives"] = "tactical_knife"
			var/choice = input(H,"What weapon will you use to claim fame and fortune?","Select Weapon") in options
			if(!choice)
				choice = pick(options) //Pick for them
			if(H && choice)
				world << "1"
				switch(choice)
					if("crossbow")
						H.put_in_hand(GRASP_RIGHT_HAND, new /obj/item/weapon/crossbow(H))
						var/obj/item/stack/rods/R = new /obj/item/stack/rods(H.loc)
						R.amount = 25
						H.put_in_hand(GRASP_LEFT_HAND, R)
					if("nagant")
						H.put_in_hand(GRASP_RIGHT_HAND, new /obj/item/weapon/gun/projectile/nagant(H))
						H.put_in_hand(GRASP_LEFT_HAND, new /obj/item/ammo_storage/box/b762x55(H))
					if("pistol")
						H.put_in_hand(GRASP_RIGHT_HAND, new /obj/item/weapon/gun/projectile/pistol(H))
						H.put_in_hand(GRASP_LEFT_HAND, new /obj/item/ammo_storage/magazine/mc9mm(H))
					if("tactical_knife")
						H.equip_or_collect(new /obj/item/weapon/kitchen/utensil/knife/tactical(H), slot_r_store)
						H.equip_or_collect(new /obj/item/weapon/kitchen/utensil/knife/tactical(H), slot_s_store)
						world << "2"
		return 1