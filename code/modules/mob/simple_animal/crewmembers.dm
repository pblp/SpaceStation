/mob/living/simple_animal/crewmember
	name = "Unknown"
	icon = 'critter.dmi'
	icon_state = "crewmember"
	icon_living = "crewmember"
	icon_dead = "crewmember_dead"
	speak_emote = list("говорит", "нервно выговаривает")
	emote_hear = list("бормочет себе под нос","ворчит")
	emote_see = list("дергает головой", "дрожит")
	speak_chance = 1
	turns_per_move = 5
	attacktext = "наносит космический удар"
	attack_sound = 'sound/weapons/punch1.ogg'
	response_help = "тычет пальцем в"
	response_disarm = "толкает"
	response_harm = "бьет"

/mob/living/simple_animal/crewmember/captain
	name = "John Cobb"
	icon = 'critter.dmi'
	icon_state = "crewmember_cap"
	icon_living = "crewmember_cap"
	icon_dead = "crewmember_cap_dead"
	gender = MALE
	speak = list("Черт... Да где же мы...","Так много ответственности...","Что же делать, мамочки...","Ой-ой...")
	health = 100
	harm_intent_damage = 8
	melee_damage_lower = 10
	melee_damage_upper = 10