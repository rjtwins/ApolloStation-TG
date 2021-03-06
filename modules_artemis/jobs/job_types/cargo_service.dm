/*
Quartermaster
*/
/datum/job/qm
	title = "Quartermaster"
	flag = QUARTERMASTER
	department_head = list("Head of Personnel")
	department_flag = CARGO
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of personnel"
	selection_color = "#d7b088"

	outfit = /datum/outfit/job/quartermaster

	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mining, access_mining_station, access_mineral_storeroom, access_fax, access_foreman)
	minimal_access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mining, access_mining_station, access_mineral_storeroom, access_fax)

	rank_succession_level = 6

/datum/outfit/job/quartermaster
	name = "Quartermaster"
	jobtype = /datum/job/qm

	belt = /obj/item/device/pda/quartermaster
	ears = /obj/item/device/radio/headset/headset_cargo
	uniform = /obj/item/clothing/under/rank/cargo
	shoes = /obj/item/clothing/shoes/sneakers/brown
	glasses = /obj/item/clothing/glasses/sunglasses
	l_hand = /obj/item/weapon/clipboard

/*
Mining Foreman
*/
/datum/job/foreman
	title = "Mining Foreman"
	flag = FOREMAN
	department_head = list("Head of Personnel")
	department_flag = CARGO
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the quartermaster and the head of personnel"
	selection_color = "#d7b088"

	outfit = /datum/outfit/job/foreman

	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_mining, access_mining_station, access_mineral_storeroom, access_fax, access_foreman, access_eva)
	minimal_access = list(access_mining, access_mining_station, access_mailsorting, access_mineral_storeroom, access_fax, access_foreman, access_eva)

	rank_succession_level = 5

/datum/outfit/job/foreman
	name = "Mining Foreman"
	jobtype = /datum/job/foreman

	belt = /obj/item/device/pda/shaftminer
	ears = /obj/item/device/radio/headset/headset_cargo/mining
	shoes = /obj/item/clothing/shoes/workboots/mining
	gloves = /obj/item/clothing/gloves/color/black
	uniform = /obj/item/clothing/under/rank/miner/lavaland
	l_pocket = /obj/item/weapon/reagent_containers/hypospray/medipen/survival
	r_pocket = /obj/item/device/flashlight/seclite
	backpack_contents = list(
		/obj/item/weapon/storage/bag/ore=1,\
		/obj/item/weapon/kitchen/knife/combat/survival=1,\
		/obj/item/weapon/mining_voucher=2)

	backpack = /obj/item/weapon/storage/backpack/explorer
	satchel = /obj/item/weapon/storage/backpack/satchel/explorer
	dufflebag = /obj/item/weapon/storage/backpack/dufflebag
	box = /obj/item/weapon/storage/box/survival_mining

/*
Cargo Technician
*/
/datum/job/cargo_tech
	title = "Cargo Technician"
	flag = CARGOTECH
	department_head = list("Head of Personnel")
	department_flag = CARGO
	faction = "Station"
	total_positions = 3
	spawn_positions = 2
	supervisors = "the quartermaster and the head of personnel"
	selection_color = "#dcba97"

	outfit = /datum/outfit/job/cargo_tech

	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mining, access_mining_station, access_mineral_storeroom)
	minimal_access = list(access_maint_tunnels, access_cargo, access_cargo_bot, access_mailsorting, access_mineral_storeroom)

	rank_succession_level = INDUCTEE_SUCCESSION_LEVEL

/datum/outfit/job/cargo_tech
	name = "Cargo Technician"
	jobtype = /datum/job/cargo_tech

	belt = /obj/item/device/pda/cargo
	ears = /obj/item/device/radio/headset/headset_cargo
	uniform = /obj/item/clothing/under/rank/cargotech


/*
Shaft Miner
*/
/datum/job/mining
	title = "Shaft Miner"
	flag = MINER
	department_head = list("Head of Personnel")
	department_flag = CARGO
	faction = "Station"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the mining foreman, the quartermaster and the head of personnel"
	selection_color = "#dcba97"

	outfit = /datum/outfit/job/miner

	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mining, access_mining_station, access_mineral_storeroom, access_eva)
	minimal_access = list(access_mining, access_mining_station, access_mailsorting, access_mineral_storeroom, access_eva)

	rank_succession_level = INDUCTEE_SUCCESSION_LEVEL

/datum/outfit/job/miner
	name = "Shaft Miner (Lavaland)"
	jobtype = /datum/job/mining

	belt = /obj/item/device/pda/shaftminer
	ears = /obj/item/device/radio/headset/headset_cargo/mining
	shoes = /obj/item/clothing/shoes/workboots/mining
	gloves = /obj/item/clothing/gloves/color/black
	uniform = /obj/item/clothing/under/rank/miner/lavaland
	l_pocket = /obj/item/weapon/reagent_containers/hypospray/medipen/survival
	r_pocket = /obj/item/device/flashlight/seclite
	backpack_contents = list(
		/obj/item/weapon/storage/bag/ore=1,\
		/obj/item/weapon/kitchen/knife/combat/survival=1,\
		/obj/item/weapon/mining_voucher=1)

	backpack = /obj/item/weapon/storage/backpack/explorer
	satchel = /obj/item/weapon/storage/backpack/satchel/explorer
	dufflebag = /obj/item/weapon/storage/backpack/dufflebag
	box = /obj/item/weapon/storage/box/survival_mining

/datum/outfit/job/miner/asteroid
	name = "Shaft Miner (Asteroid)"
	uniform = /obj/item/clothing/under/rank/miner
	shoes = /obj/item/clothing/shoes/workboots

/datum/outfit/job/miner/equipped
	name = "Shaft Miner (Lavaland + Equipment)"
	suit = /obj/item/clothing/suit/hooded/explorer
	mask = /obj/item/clothing/mask/gas/explorer
	glasses = /obj/item/clothing/glasses/meson
	suit_store = /obj/item/weapon/tank/internals/oxygen
	internals_slot = slot_s_store
	backpack_contents = list(
		/obj/item/weapon/storage/bag/ore=1,
		/obj/item/weapon/kitchen/knife/combat/survival=1,
		/obj/item/weapon/mining_voucher=1,
		/obj/item/device/t_scanner/adv_mining_scanner/lesser=1,
		/obj/item/weapon/gun/energy/kinetic_accelerator=1)

/datum/outfit/job/miner/equipped/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	if(istype(H.wear_suit, /obj/item/clothing/suit/hooded))
		var/obj/item/clothing/suit/hooded/S = H.wear_suit
		S.ToggleHood()

/datum/outfit/job/miner/equipped/asteroid
	name = "Shaft Miner (Asteroid + Equipment)"
	uniform = /obj/item/clothing/under/rank/miner
	shoes = /obj/item/clothing/shoes/workboots
	suit = /obj/item/clothing/suit/space/hardsuit/mining
	mask = /obj/item/clothing/mask/breath



/*
Bartender
*/
/datum/job/bartender
	title = "Bartender"
	flag = BARTENDER
	department_head = list("Head of Personnel")
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of personnel"
	selection_color = "#bbe291"

	outfit = /datum/outfit/job/bartender

	access = list(access_hydroponics, access_bar, access_kitchen, access_morgue, access_weapons)
	minimal_access = list(access_bar)

	rank_succession_level = INDUCTEE_SUCCESSION_LEVEL

/datum/outfit/job/bartender
	name = "Bartender"
	jobtype = /datum/job/bartender

	glasses = /obj/item/clothing/glasses/sunglasses/reagent
	belt = /obj/item/device/pda/bar
	ears = /obj/item/device/radio/headset/headset_srv
	uniform = /obj/item/clothing/under/rank/bartender
	suit = /obj/item/clothing/suit/armor/vest
	backpack_contents = list(/obj/item/weapon/storage/box/beanbag=1)
	shoes = /obj/item/clothing/shoes/laceup

/*
Cook
*/
/datum/job/cook
	title = "Cook"
	alt_titles = list("Botanist")
	flag = COOK
	department_head = list("Head of Personnel")
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 2
	spawn_positions = 1
	supervisors = "the head of personnel"
	selection_color = "#bbe291"
	var/cooks = 0 //Counts cooks amount

	outfit = /datum/outfit/job/cook

	access = list(access_hydroponics, access_bar, access_kitchen, access_morgue)
	minimal_access = list(access_kitchen, access_morgue, access_hydroponics)

	rank_succession_level = INDUCTEE_SUCCESSION_LEVEL

/datum/job/cook/equip(mob/living/carbon/human/H, visualsOnly = FALSE, announce = TRUE)
	if(!H)
		return 0

	//Equip the rest of the gear
	H.dna.species.before_equip_job(src, H, visualsOnly)

	if(H.job == "Botanist")
		H.equipOutfit(/datum/outfit/job/botanist, visualsOnly)
	else
		H.equipOutfit(/datum/outfit/job/cook, visualsOnly)

	H.dna.species.after_equip_job(src, H, visualsOnly)

	if(!visualsOnly && announce)
		announce(H)

/datum/outfit/job/cook
	name = "Cook"
	jobtype = /datum/job/cook

	belt = /obj/item/device/pda/cook
	ears = /obj/item/device/radio/headset/headset_srv
	uniform = /obj/item/clothing/under/rank/chef
	suit = /obj/item/clothing/suit/toggle/chef
	head = /obj/item/clothing/head/chefhat
	backpack_contents = list(/obj/item/weapon/sharpener = 1)

/datum/outfit/job/botanist
	name = "Botanist"
	jobtype = /datum/job/cook

	belt = /obj/item/device/pda/botanist
	ears = /obj/item/device/radio/headset/headset_srv
	uniform = /obj/item/clothing/under/rank/hydroponics
	suit = /obj/item/clothing/suit/apron
	gloves  =/obj/item/clothing/gloves/botanic_leather
	suit_store = /obj/item/device/plant_analyzer

	backpack = /obj/item/weapon/storage/backpack/botany
	satchel = /obj/item/weapon/storage/backpack/satchel/hyd

/*
Janitor
*/
/datum/job/janitor
	title = "Janitor"
	flag = JANITOR
	department_head = list("Head of Personnel")
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 2
	spawn_positions = 1
	supervisors = "the head of personnel"
	selection_color = "#bbe291"
	var/global/janitors = 0

	outfit = /datum/outfit/job/janitor

	access = list(access_janitor, access_maint_tunnels)
	minimal_access = list(access_janitor, access_maint_tunnels)

	rank_succession_level = INDUCTEE_SUCCESSION_LEVEL

/datum/outfit/job/janitor
	name = "Janitor"
	jobtype = /datum/job/janitor

	belt = /obj/item/device/pda/janitor
	ears = /obj/item/device/radio/headset/headset_srv
	uniform = /obj/item/clothing/under/rank/janitor
	backpack_contents = list(/obj/item/device/modular_computer/tablet/preset/advanced=1)
