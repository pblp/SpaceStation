/mob/verb/become_vampire()
	set name = "Become a Vampire"
	set category = "IC"
	if(src.isvampire == 0)
		usr << "<B>\red Твой организм терпит ужасающие метаморфозы.</B>"
		src.isvampire = 1
		vampire_check()

/mob/living/carbon/human/vampire/verb/invis()
	set name = "Reflection"
	set category = "Vampire"
	src.alpha = 15
	spawn(500)
	src.alpha = 255

/mob/proc/vampire_check()
	if(src.isvampire == 1)
		usr.verbs+=new/mob/living/carbon/human/vampire/verb/invis()
	else
		return