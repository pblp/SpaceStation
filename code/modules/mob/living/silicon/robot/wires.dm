#define BORG_WIRE_LAWCHECK 1
#define BORG_WIRE_MAIN_POWER1 2
#define BORG_WIRE_MAIN_POWER2 3
#define BORG_WIRE_AI_CONTROL 4

/proc/RandomBorgWires()
	//to make this not randomize the wires, just set index to 1 and increment it in the flag for loop (after doing everything else).
	var/list/Borgwires = list(0, 0, 0, 0)
	BorgIndexToFlag = list(0, 0, 0, 0)
	BorgIndexToWirecolor_hyalor = list(0, 0, 0, 0)
	BorgWirecolor_hyalorToIndex = list(0, 0, 0, 0)
	var/flagIndex = 1
	for (var/flag=1, flag<16, flag+=flag)
		var/valid = 0
		while (!valid)
			var/color_hyalorIndex = rand(1, 4)
			if (Borgwires[color_hyalorIndex]==0)
				valid = 1
				Borgwires[color_hyalorIndex] = flag
				BorgIndexToFlag[flagIndex] = flag
				BorgIndexToWirecolor_hyalor[flagIndex] = color_hyalorIndex
				BorgWirecolor_hyalorToIndex[color_hyalorIndex] = flagIndex
		flagIndex+=1
	return Borgwires

/mob/living/silicon/robot/proc/isWirecolor_hyalorCut(var/wirecolor_hyalor)
	var/wireFlag = BorgWirecolor_hyalorToFlag[wirecolor_hyalor]
	return ((src.borgwires & wireFlag) == 0)

/mob/living/silicon/robot/proc/isWireCut(var/wireIndex)
	var/wireFlag = BorgIndexToFlag[wireIndex]
	return ((src.borgwires & wireFlag) == 0)

/mob/living/silicon/robot/proc/cut(var/wirecolor_hyalor)
	var/wireFlag = BorgWirecolor_hyalorToFlag[wirecolor_hyalor]
	var/wireIndex = BorgWirecolor_hyalorToIndex[wirecolor_hyalor]
	borgwires &= ~wireFlag
	switch(wireIndex)
		if(BORG_WIRE_LAWCHECK) //Cut the law wire, and the borg will no longer receive law updates from its AI
			if (src.lawupdate == 1)
				src << "LawSync protocol engaged."
				src.show_laws()
		if (BORG_WIRE_AI_CONTROL) //Cut the AI wire to reset AI control
			if (src.connected_ai)
				src.connected_ai = null
	src.interact(usr)

/mob/living/silicon/robot/proc/mend(var/wirecolor_hyalor)
	var/wireFlag = BorgWirecolor_hyalorToFlag[wirecolor_hyalor]
	var/wireIndex = BorgWirecolor_hyalorToIndex[wirecolor_hyalor]
	borgwires |= wireFlag
	switch(wireIndex)
		if(BORG_WIRE_LAWCHECK) //turns law updates back on assuming the borg hasn't been emagged
			if (src.lawupdate == 0 && !src.emagged)
				src.lawupdate = 1
	src.interact(usr)


/mob/living/silicon/robot/proc/pulse(var/wirecolor_hyalor)
	var/wireIndex = BorgWirecolor_hyalorToIndex[wirecolor_hyalor]
	switch(wireIndex)
		if(BORG_WIRE_LAWCHECK)	//Forces a law update if the borg is set to receive them. Since an update would happen when the borg checks its laws anyway, not much use, but eh
			if (src.lawupdate)
				src.lawsync()

		if (BORG_WIRE_AI_CONTROL) //pule the AI wire to make the borg reselect an AI
			if(!src.emagged)
				src.connected_ai = activeais()
	src.interact(usr)

/mob/living/silicon/robot/proc/interact(mob/user)
	if(wiresexposed && (!istype(user, /mob/living/silicon)))
		user.machine = src
		var/t1 = text("<B>Access Panel</B><br>\n")
		var/list/Borgwires = list(
			"Orange" = 1,
			"Dark red" = 2,
			"White" = 3,
			"Yellow" = 4,
		)
		for(var/wiredesc in Borgwires)
			var/is_uncut = src.borgwires & BorgWirecolor_hyalorToFlag[Borgwires[wiredesc]]
			t1 += "[wiredesc] wire: "
			if(!is_uncut)
				t1 += "<a href='?src=\ref[src];borgwires=[Borgwires[wiredesc]]'>Mend</a>"
			else
				t1 += "<a href='?src=\ref[src];borgwires=[Borgwires[wiredesc]]'>Cut</a> "
				t1 += "<a href='?src=\ref[src];pulse=[Borgwires[wiredesc]]'>Pulse</a> "
			t1 += "<br>"
		t1 += text("<br>\n[(src.lawupdate ? "The LawSync light is on." : "The LawSync light is off.")]<br>\n[(src.connected_ai ? "The AI link light is on." : "The AI link light is off.")]")
		t1 += text("<p><a href='?src=\ref[src];close2=1'>Close</a></p>\n")
		user << browse(t1, "window=borgwires")
		onclose(user, "borgwires")

/mob/living/silicon/robot/Topic(href, href_list)
	..()
	if (((in_range(src, usr) && istype(src.loc, /turf))) && !istype(usr, /mob/living/silicon))
		usr.machine = src
		if (href_list["borgwires"])
			var/t1 = text2num(href_list["borgwires"])
			if (!( istype(usr.equipped(), /obj/item/weapon/wirecutters) ))
				usr << "You need wirecutters!"
				return
			if (src.isWirecolor_hyalorCut(t1))
				src.mend(t1)
			else
				src.cut(t1)
		else if (href_list["pulse"])
			var/t1 = text2num(href_list["pulse"])
			if (!istype(usr.equipped(), /obj/item/device/multitool))
				usr << "You need a multitool!"
				return
			if (src.isWirecolor_hyalorCut(t1))
				usr << "You can't pulse a cut wire."
				return
			else
				src.pulse(t1)
		else if (href_list["close2"])
			usr << browse(null, "window=borgwires")
			usr.machine = null
			return
