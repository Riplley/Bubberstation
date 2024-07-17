/datum/species/xeno
//Adjusting Plasma vessel to be little less then a tiny one
/obj/item/organ/internal/alien/plasmavessel/roundstart
	stored_plasma = 80
	max_plasma = 80
	plasma_rate = 2.0
	heal_rate = .5
//Adjusting Hivenode to not be broken
/obj/item/organ/internal/alien/hivenode/on_mob_insert(mob/living/carbon/organ_owner)
	if(organ_owner)
		organ_owner.faction -= ROLE_ALIEN
	return ..()
//Making building resin structures not powergaming
#define BUILD_DURATION 3 SECONDS
/datum/action/cooldown/alien/make_structure/resin
	var/build_duration = 3 SECONDS
