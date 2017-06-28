/datum/job/captain
	title = "Captain"
	flag = CAPTAIN
	department_flag = ENGSEC
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
//	supervisors = "Nanotrasen officials and Space law"


	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_if_possible(new /obj/item/device/radio/headset/heads/captain(H), H.slot_ears)
		H.equip_if_possible(new /obj/item/weapon/storage/backpack(H), H.slot_back)
		H.equip_if_possible(new /obj/item/weapon/storage/box/survival(H.back), H.slot_in_backpack)
		H.equip_if_possible(new /obj/item/clothing/under/rank/captain(H), H.slot_w_uniform)
		H.equip_if_possible(new /obj/item/device/pda/captain(H), H.slot_belt)
		H.equip_if_possible(new /obj/item/clothing/suit/armor/captain(H), H.slot_wear_suit)
		H.equip_if_possible(new /obj/item/clothing/shoes/brown(H), H.slot_shoes)
		H.equip_if_possible(new /obj/item/clothing/head/caphat(H), H.slot_head)
		H.equip_if_possible(new /obj/item/clothing/glasses/sunglasses(H), H.slot_glasses)
		H.equip_if_possible(new /obj/item/weapon/storage/id_kit(H), H.slot_in_backpack)
		var/obj/item/weapon/implant/loyalty/L = new/obj/item/weapon/implant/loyalty(H)
		L.imp_in = H
		L.implanted = 1
		world << "<b>[H.real_name] - наш капитан!</b>"
		return 1

/datum/job/hos
	title = "Officer"
	flag = HOS
	department_flag = ENGSEC
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
//	supervisors = "the captain"


	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_if_possible(new /obj/item/weapon/storage/backpack/security (H), H.slot_back)
		H.equip_if_possible(new /obj/item/weapon/storage/box/survival(H.back), H.slot_in_backpack)
		H.equip_if_possible(new /obj/item/device/radio/headset/heads/hos(H), H.slot_ears)
		H.equip_if_possible(new /obj/item/clothing/under/rank/head_of_security(H), H.slot_w_uniform)
		H.equip_if_possible(new /obj/item/clothing/shoes/jackboots(H), H.slot_shoes)
		H.equip_if_possible(new /obj/item/device/pda/heads/hos(H), H.slot_belt)
		H.equip_if_possible(new /obj/item/clothing/suit/armor/hos(H), H.slot_wear_suit)
		H.equip_if_possible(new /obj/item/clothing/gloves/black(H), H.slot_gloves)
		H.equip_if_possible(new /obj/item/clothing/head/helmet/HoS(H), H.slot_head)
		H.equip_if_possible(new /obj/item/clothing/mask/gas/emergency(H), H.slot_wear_mask)
		H.equip_if_possible(new /obj/item/clothing/glasses/sunglasses/sechud(H), H.slot_glasses)
		H.equip_if_possible(new /obj/item/weapon/handcuffs(H), H.slot_in_backpack)
		H.equip_if_possible(new /obj/item/weapon/gun/energy/gun(H), H.slot_s_store)
		var/obj/item/weapon/implant/loyalty/L = new/obj/item/weapon/implant/loyalty(H)
		L.imp_in = H
		L.implanted = 1
		return 1

/datum/job/chief_engineer
	title = "Engineer"
	flag = CHIEF
	department_flag = ENGSEC
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
//	supervisors = "the captain"


	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_if_possible(new /obj/item/device/radio/headset/heads/ce(H), H.slot_ears)
		H.equip_if_possible(new /obj/item/weapon/storage/backpack/industrial (H), H.slot_back)
		H.equip_if_possible(new /obj/item/weapon/storage/box/engineer(H.back), H.slot_in_backpack)
		H.equip_if_possible(new /obj/item/clothing/under/rank/chief_engineer(H), H.slot_w_uniform)
		H.equip_if_possible(new /obj/item/device/pda/heads/ce(H), H.slot_belt)
		H.equip_if_possible(new /obj/item/clothing/shoes/brown(H), H.slot_shoes)
		H.equip_if_possible(new /obj/item/clothing/head/helmet/hardhat/white(H), H.slot_head)
		H.equip_if_possible(new /obj/item/weapon/storage/belt/utility/full(H), H.slot_l_hand)
		H.equip_if_possible(new /obj/item/clothing/gloves/black(H), H.slot_gloves)
		return 1

/datum/job/rd
	title = "Research Director"
	flag = RD
	department_flag = MEDSCI
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
//	supervisors = "the captain"


	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_if_possible(new /obj/item/device/radio/headset/heads/rd(H), H.slot_ears)
		H.equip_if_possible(new /obj/item/clothing/shoes/brown(H), H.slot_shoes)
		H.equip_if_possible(new /obj/item/clothing/under/rank/research_director(H), H.slot_w_uniform)
		H.equip_if_possible(new /obj/item/device/pda/heads/rd(H), H.slot_belt)
		H.equip_if_possible(new /obj/item/clothing/suit/labcoat(H), H.slot_wear_suit)
		H.equip_if_possible(new /obj/item/weapon/clipboard(H), H.slot_r_hand)
		return 1

/datum/job/cmo
	title = "Medical Officer"
	flag = CMO
	department_flag = MEDSCI
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
//	supervisors = "the captain"


	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_if_possible(new /obj/item/device/radio/headset/heads/cmo(H), H.slot_ears)
		H.equip_if_possible(new /obj/item/weapon/storage/backpack/medic (H), H.slot_back)
		H.equip_if_possible(new /obj/item/weapon/storage/box/survival(H.back), H.slot_in_backpack)
		H.equip_if_possible(new /obj/item/clothing/under/rank/chief_medical_officer(H), H.slot_w_uniform)
		H.equip_if_possible(new /obj/item/clothing/shoes/brown(H), H.slot_shoes)
		H.equip_if_possible(new /obj/item/device/pda/heads/cmo(H), H.slot_belt)
		H.equip_if_possible(new /obj/item/clothing/suit/labcoat/cmo(H), H.slot_wear_suit)
		H.equip_if_possible(new /obj/item/weapon/storage/firstaid/regular(H), H.slot_l_hand)
		H.equip_if_possible(new /obj/item/device/flashlight/pen(H), H.slot_s_store)
		return 1

/datum/job/qm
	title = "Quartermaster"
	flag = QUARTERMASTER
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
//	supervisors = "the head of personnel"


	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_if_possible(new /obj/item/device/radio/headset/heads/qm(H), H.slot_ears)
		H.equip_if_possible(new /obj/item/clothing/under/rank/cargo(H), H.slot_w_uniform)
		H.equip_if_possible(new /obj/item/clothing/shoes/black(H), H.slot_shoes)
		H.equip_if_possible(new /obj/item/device/pda/quartermaster(H), H.slot_belt)
		H.equip_if_possible(new /obj/item/clothing/gloves/black(H), H.slot_gloves)
		H.equip_if_possible(new /obj/item/clothing/glasses/sunglasses(H), H.slot_glasses)
		H.equip_if_possible(new /obj/item/weapon/clipboard(H), H.slot_l_hand)
		return 1

/datum/job/scientist
	title = "Scientist"
	flag = SCIENTIST
	department_flag = MEDSCI
	faction = "Station"
	total_positions = 5
	spawn_positions = 3
//	supervisors = "the research director"


	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_if_possible(new /obj/item/device/radio/headset/headset_sci(H), H.slot_ears)
		H.equip_if_possible(new /obj/item/clothing/under/rank/scientist(H), H.slot_w_uniform)
		H.equip_if_possible(new /obj/item/clothing/shoes/white(H), H.slot_shoes)
		H.equip_if_possible(new /obj/item/device/pda/toxins(H), H.slot_belt)
		H.equip_if_possible(new /obj/item/clothing/suit/labcoat/science(H), H.slot_wear_suit)
		H.equip_if_possible(new /obj/item/clothing/mask/gas(H), H.slot_wear_mask)
		H.equip_if_possible(new /obj/item/weapon/tank/oxygen(H), H.slot_l_hand)
		return 1

/datum/job/chef
	title = "Chef"
	flag = CHEF
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
//	supervisors = "the head of personnel"


	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_if_possible(new /obj/item/clothing/under/rank/chef(H), H.slot_w_uniform)
		H.equip_if_possible(new /obj/item/clothing/suit/chef(H), H.slot_wear_suit)
		H.equip_if_possible(new /obj/item/clothing/shoes/black(H), H.slot_shoes)
		H.equip_if_possible(new /obj/item/clothing/head/chefhat(H), H.slot_head)
		return 1

/datum/job/assistant
	title = "Assistant"
	flag = ASSISTANT
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = -1
	spawn_positions = -1
//	supervisors = "absolutely everyone"

	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_if_possible(new /obj/item/clothing/under/color_hyalor/grey(H), H.slot_w_uniform)
		H.equip_if_possible(new /obj/item/clothing/shoes/black(H), H.slot_shoes)
		return 1