/mob/proc/check_weight()
	var/weight_sum = 0
	for(var/obj/item/O in contents)
		if(!istype(O, /obj/item/weapon/storage))
			if(O.w_class > 1)
				weight_sum += O.w_class

		if(istype(O, /obj/item/weapon/storage))
			var/obj/item/weapon/storage/ST = O
			weight_sum += ST.check_my_weight()


	if(weight_sum > 48)
		return 1
	else
		return 0


//CHECK CONTENTS OF BOXES AND BACKPACKS
/obj/item/weapon/storage/proc/check_my_weight()
	var/weight_sum = 0
	for(var/obj/item/O in contents)
		if(O.w_class > 1)
			weight_sum += O.w_class
		if(istype(O, /obj/item/weapon/storage))
			var/obj/item/weapon/storage/ST = O
			weight_sum += ST.check_my_weight()

	return weight_sum