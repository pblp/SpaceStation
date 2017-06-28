/obj/machinery/computer/information
	name = "informational computer"
	desc = "Самый умный из нас."
	icon_state = "info1"

/obj/machinery/computer/information/attack_hand(var/mob/user as mob)
	playsound(src.loc, 'sound/machines/input1.ogg', 15, 1, 1)
	usr << "<B>\red 3 августа, 2149 год. Исход.</B>"
	sleep(5)
	playsound(src.loc, 'sound/machines/beep.ogg', 15, 1, 1)
	usr << "Экипаж космической станции 'Исход', под вами находитс&#255; астероид. Сканеры показывают большой уровень концентрации плазмы, вы должны спуститьс&#255; на него и собрать как можно больше материала дл&#255; исследований, после чего отдать на изучение в лабораторию. За каждое успешное изобретение, отправленное на ЦК - вы будете получать очки снабжени&#255;."
	sleep(10)
	playsound(src.loc, 'sound/machines/input1.ogg', 15, 1, 1)
	usr << "<B>Напоминание:</B> Покормите Джонса."