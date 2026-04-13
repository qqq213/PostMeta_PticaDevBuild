/datum/metacoinshop/listing
	var/id
	var/name
	var/desc
	var/price
	var/item_type
	var/listing_type = "item"
	var/icon
	var/icon_state

/datum/metacoinshop/listing/preround

/datum/metacoinshop/listing/preround/donut_box
	id = "donut_box"
	name = "Donut Box"
	desc = "A box of donuts... what else do you expect?"
	price = 50
	item_type = /obj/item/storage/fancy/donut_box

/datum/metacoinshop/listing/preround/spray_libital
	id = "spray_libital"
	name = "Libital Spray"
	desc = "An medigel full of libital, mainly used to treat bruises"
	price = 75
	item_type = /obj/item/reagent_containers/medigel/libital

/datum/metacoinshop/listing/preround/spray_auri
	id = "spray_auri"
	name = "Aiuri Spray"
	desc = "An medigel full of aiuri, mainly used to treat burns"
	price = 75
	item_type = /obj/item/reagent_containers/medigel/aiuri

/datum/metacoinshop/listing/preround/antag_token
	id = "antag_token"
	name = "Antag Token"
	desc = "Guarantees one chosen antagonist role at roundstart."
	price = 650
	item_type = /obj/item/coin/antagtoken // to get the display icon of ours
	listing_type = "other"

/datum/metacoin_shop_listing
	parent_type = /datum/metacoinshop/listing

/datum/metacoinshop/antag_role
	var/id
	var/name
	var/desc
	var/ruleset_tag
	var/jobban_flag
	var/antag_datum
	var/default_min_pop = 0

/datum/metacoinshop/antag_role/traitor
	id = "traitor"
	name = "Traitor"
	desc = "An unpaid debt. A score to be settled. Maybe you were just in the wrong \
	   	place at the wrong time. Whatever the reasons, you were selected to \
	   	infiltrate Space Station 13."
	ruleset_tag = "Roundstart Traitor"
	jobban_flag = ROLE_TRAITOR
	antag_datum = /datum/antagonist/traitor
	default_min_pop = 3

/datum/metacoinshop/antag_role/changeling
	id = "changeling"
	name = "Changeling"
	desc = "A highly intelligent alien predator that is capable of altering their \
	shape to flawlessly resemble a human."
	ruleset_tag = "Roundstart Changeling"
	jobban_flag = ROLE_CHANGELING
	antag_datum = /datum/antagonist/changeling
	default_min_pop = 15

/datum/metacoinshop/antag_role/heretic
	id = "heretic"
	name = "Heretic"
	desc = " Forgotten, devoured, gutted. Humanity has forgotten the eldritch forces \
	   	of decay, but the mansus veil has weakened. We will make them taste fear \
	   	again..."
	ruleset_tag = "Roundstart Heretics"
	jobban_flag = ROLE_HERETIC
	antag_datum = /datum/antagonist/heretic
	default_min_pop = 30

/datum/metacoinshop/antag_role/spy
	id = "spy"
	name = "Spy"
	desc = "123"
	ruleset_tag = "Roundstart Spies"
	jobban_flag = ROLE_CHANGELING
	antag_datum = /datum/antagonist/spy
	default_min_pop = 15
