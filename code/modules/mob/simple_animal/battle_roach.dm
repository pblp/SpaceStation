#define HOSTILE_STANCE_IDLE 1
#define HOSTILE_STANCE_ALERT 2
#define HOSTILE_STANCE_ATTACK 3
#define HOSTILE_STANCE_ATTACKING 4
#define HOSTILE_STANCE_TIRED 5

/obj/effects/battleroach_spawner
	unacidable = 1

/obj/effects/battleroach_spawner/racer
	battleroach_spawn()
		if(prob(1))
			spawn(5)
				if(prob(15))
					new /mob/living/simple_animal/hostile/battleroach/racer(src.loc)


/obj/effects/battleroach_spawner/process()
	spawn(290)
		battleroach_spawn()

/obj/effects/battleroach_spawner/racer/process()
	spawn(290)
		battleroach_spawn()

/obj/effects/battleroach_spawner/New()
	..()
	processing_objects.Add(src)

/obj/effects/battleroach_spawner/proc/battleroach_spawn()
	if(prob(1))
		spawn(5)
			if(prob(15))
				new /mob/living/simple_animal/roach/cockroach(src.loc)

/mob/living/simple_animal/roach/cockroach
	name = "cockroach"
	desc = "Какой маленький, сладенький, слизенький солдат секретного уль&#255;. Вкусн&#255;шка."
	icon = 'critter.dmi'
	icon_state = "cockroach"
	icon_dead = "cockroach"
	health = 1
	var/maxHealth = 1
	turns_per_move = 5
//	loot = list(/obj/effect/decal/cleanable/deadcockroach)
//	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	minbodytemp = 270
	maxbodytemp = INFINITY
//	pass_flags = PASSTABLE | PASSGRILLE | PASSMOB
//	mob_size = MOB_SIZE_TINY
	response_help  = "тыкает пальцем в"
	response_disarm = "дергает"
	response_harm   = "пиздит ебучего"
	speak_emote = list("chitters")
	density = 0
//	ventcrawler = VENTCRAWLER_ALWAYS
//	gold_core_spawnable = 2
//	verb_say = "chitters"
//	verb_ask = "chitters inquisitively"
//	verb_exclaim = "chitters loudly"
//	verb_yell = "chitters loudly"
	var/squish_chance = 50
//	del_on_death = 1

/mob/living/simple_animal/roach/cockroach/Crossed(var/atom/movable/AM)
	if(ismob(AM))
		if(isliving(AM))
			var/mob/living/A = AM
	//		if(A.mob_size > MOB_SIZE_SMALL && !(A.movement_type & FLYING))
			if(prob(squish_chance))
				A.visible_message("<B>\red [A] раздавил таракашу!</B>", "<B>\red Ты раздавил таракана! Кошмарно!</B>")
				adjustBruteLoss(1) //kills a normal cockroach
				new/obj/effect/decal/cleanable/deadcockroach(A.loc,1)
				die()
			else
				visible_message("<B>\red [src] избежал толстых ножек.</B>")
				playsound(loc, 'punchmiss.ogg', 25, 1, -1)

/mob/living/simple_animal/roach/cockroach/proc/die()
	del(src)


/obj/effect/decal/cleanable/deadcockroach
	name = "cockroach guts"
	desc = "Ты убил одного, но на его месте восстанут еще четыре таких же."
	icon = 'icons/effects/blood.dmi'
	icon_state = "xfloor1"
	random_icon_states = list("xfloor1", "xfloor2", "xfloor3", "xfloor4", "xfloor5", "xfloor6", "xfloor7")


//Look Sir, free roaches!
/mob/living/simple_animal/hostile/battleroach
	name = "cockroach"
	desc = "Какой маленький, сладенький, слизенький солдат секретного уль&#255;. Вкусн&#255;шка."
	icon = 'mob.dmi'
	icon_state = "roach"
	icon_living = "roach"
	icon_dead = "roach_dead"
	turns_per_move = 3
	melee_damage_upper = 8

	Life()
		..()
		if(health < 1)
			alive = 0
			icon_state = icon_dead
			stat = 2 			//Dead
			density = 0
			return

		if(prob(1))
			spawn(60)
				if(prob(2))
					spawn(25)
						if(prob(3))
							new /mob/living/simple_animal/hostile/battleroach(src.loc)

		if(client)
			return 0

		if(!stat)
			switch(stance)
				if(HOSTILE_STANCE_IDLE)
					target_mob = FindTarget()

				if(HOSTILE_STANCE_ATTACK)
					if(destroy_surroundings)
						DestroySurroundings()
					MoveToTarget()

				if(HOSTILE_STANCE_ATTACKING)
					if(destroy_surroundings)
						DestroySurroundings()
					AttackTarget()

/mob/living/simple_animal/hostile/battleroach/racer
	name = "space racer"
	desc = "Blyad..."
	icon = 'mob.dmi'
	icon_state = "racer"
	icon_living = "racer"
	icon_dead = "racer_dead"
	turns_per_move = 5
	melee_damage_upper = 3

	MoveToTarget()
		playsound(src, 'moan.wav', 100, 1)
		stop_automated_movement = 1
		if(!target_mob)
			stance = HOSTILE_STANCE_IDLE
		if(target_mob in ListTargets(10))
			stance = HOSTILE_STANCE_ATTACKING
			walk_to(src, target_mob, 1, move_to_delay)

	AttackingTarget()
		playsound(src, 'roar.wav', 100, 1)
		if(isliving(target_mob))
			var/mob/living/L = target_mob
			L.attack_animal(src)
			return L
		if(istype(target_mob,/obj/mecha))
			var/obj/mecha/M = target_mob
			M.attack_animal(src)
			return M
		if(istype(target_mob,/obj/machinery/bot))
			var/obj/machinery/bot/B = target_mob
			B.attack_animal(src)