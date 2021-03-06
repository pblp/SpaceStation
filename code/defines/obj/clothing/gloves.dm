// NO GLOVES NO LOVES

/obj/item/clothing/gloves
	name = "gloves"
	w_class = 2.0
	icon = 'gloves.dmi'
	protective_temperature = 400
	heat_transfer_coefficient = 0.25
	siemens_coefficient = 0.50
	var/siemens_coefficient_archived = 0
	var/wired = 0
	var/obj/item/weapon/cell/cell = 0
	body_parts_covered = HANDS

/obj/item/clothing/gloves/white
	name = "White Gloves"
	desc = "These look pretty fancy."
	icon_state = "latex"
	item_state = "lgloves"
	color_hyalor="mime"

	redcoat
		color_hyalor = "redcoat"		//Exists for washing machines. Is not different from white gloves in any way.

/obj/item/clothing/gloves/black
	desc = "These gloves are fire-resistant."
	name = "Black Gloves"
	icon_state = "black"
	item_state = "bgloves"
	color_hyalor="brown"
	protective_temperature = 1500
	heat_transfer_coefficient = 0.01

	hos
		color_hyalor = "hosred"		//Exists for washing machines. Is not different from black gloves in any way.

	ce
		color_hyalor = "chief"			//Exists for washing machines. Is not different from black gloves in any way.


/obj/item/clothing/gloves/cyborg
	desc = "beep boop borp"
	name = "cyborg gloves"
	icon_state = "black"
	item_state = "r_hands"
	siemens_coefficient = 1.0

/obj/item/clothing/gloves/latex
	name = "Latex Gloves"
	desc = "Sterile latex gloves."
	icon_state = "latex"
	item_state = "lgloves"
	siemens_coefficient = 0.30
	permeability_coefficient = 0.01
	protective_temperature = 310
	heat_transfer_coefficient = 0.90
	color_hyalor="white"

	cmo
		color_hyalor = "medical"		//Exists for washing machines. Is not different from latex gloves in any way.

/obj/item/clothing/gloves/swat
	desc = "These tactical gloves are somewhat fire and impact-resistant."
	name = "SWAT Gloves"
	icon_state = "black"
	item_state = "swat_gl"
	siemens_coefficient = 0
	permeability_coefficient = 0.05
	protective_temperature = 1100
	heat_transfer_coefficient = 0.01

/obj/item/clothing/gloves/combat //Combined effect of SWAT gloves and insulated gloves
	desc = "These tactical gloves are somewhat fire and impact resistant."
	name = "combat gloves"
	icon_state = "black"
	item_state = "swat_gl"
	siemens_coefficient = 0
	permeability_coefficient = 0.05
	protective_temperature = 1100
	heat_transfer_coefficient = 0.01

/obj/item/clothing/gloves/space_ninja
	desc = "These nano-enhanced gloves insulate from electricity and provide fire resistance."
	name = "ninja gloves"
	icon_state = "s-ninja"
	item_state = "s-ninja"
	siemens_coefficient = 0
	protective_temperature = 1100
	heat_transfer_coefficient = 0.05
	var/draining = 0
	var/candrain = 0
	var/mindrain = 200
	var/maxdrain = 400

//BEEP BEEP IT'S THE COMMENT BRIGADE -Pete (gloves overhaul)
/*
/obj/item/clothing/gloves/stungloves/
	name = "Stungloves"
	desc = "These gloves are electrically charged."
	icon_state = "yellow"
	item_state = "ygloves"
	siemens_coefficient = 0.30
	elecgen = 1
	uses = 10
*/

/obj/item/clothing/gloves/yellow
	desc = "These gloves will protect the wearer from electric shock."
	name = "insulated gloves"
	icon_state = "yellow"
	item_state = "ygloves"
	siemens_coefficient = 0
	permeability_coefficient = 0.05
	protective_temperature = 1000
	heat_transfer_coefficient = 0.01
	color_hyalor="yellow"

/obj/item/clothing/gloves/captain
	desc = "Regal blue gloves, with a nice gold trim. Swanky."
	name = "Captain Gloves"
	icon_state = "captain"
	item_state = "egloves"
	color_hyalor = "captain"

/obj/item/clothing/gloves/botanic_leather
	desc = "These leather gloves protect against thorns, barbs, prickles, spikes and other harmful objects of floral origin."
	name = "botanic leather gloves"
	icon_state = "leather"
	item_state = "ggloves"
	siemens_coefficient = 0.50
	permeability_coefficient = 0.9
	protective_temperature = 400
	heat_transfer_coefficient = 0.70

/obj/item/clothing/gloves/orange
	name = "Orange Gloves"
	desc = "A pair of gloves, they don't look special in any way."
	icon_state = "orange"
	item_state = "orangegloves"
	color_hyalor="orange"

/obj/item/clothing/gloves/red
	name = "Red Gloves"
	desc = "A pair of gloves, they don't look special in any way."
	icon_state = "red"
	item_state = "redgloves"
	color_hyalor = "red"

/obj/item/clothing/gloves/rainbow
	name = "Rainbow Gloves"
	desc = "A pair of gloves, they don't look special in any way."
	icon_state = "rainbow"
	item_state = "rainbowgloves"
	color_hyalor = "rainbow"

	clown
		color_hyalor = "clown"

/obj/item/clothing/gloves/blue
	name = "Blue Gloves"
	desc = "A pair of gloves, they don't look special in any way."
	icon_state = "blue"
	item_state = "bluegloves"
	color_hyalor="blue"

/obj/item/clothing/gloves/purple
	name = "Purple Gloves"
	desc = "A pair of gloves, they don't look special in any way."
	icon_state = "purple"
	item_state = "purplegloves"
	color_hyalor="purple"

/obj/item/clothing/gloves/green
	name = "Green Gloves"
	desc = "A pair of gloves, they don't look special in any way."
	icon_state = "green"
	item_state = "greengloves"
	color_hyalor="green"

/obj/item/clothing/gloves/grey
	name = "Grey Gloves"
	desc = "A pair of gloves, they don't look special in any way."
	icon_state = "gray"
	item_state = "graygloves"
	color_hyalor="grey"

	rd
		color_hyalor = "director"			//Exists for washing machines. Is not different from gray gloves in any way.

	hop
		color_hyalor = "hop"				//Exists for washing machines. Is not different from gray gloves in any way.

/obj/item/clothing/gloves/light_brown
	name = "Light Brown Gloves"
	desc = "A pair of gloves, they don't look special in any way."
	icon_state = "lightbrown"
	item_state = "lightbrowngloves"
	color_hyalor="light brown"

/obj/item/clothing/gloves/brown
	name = "Brown Gloves"
	desc = "A pair of gloves, they don't look special in any way."
	icon_state = "brown"
	item_state = "browngloves"
	color_hyalor="brown"

	cargo
		color_hyalor = "cargo"				//Exists for washing machines. Is not different from brown gloves in any way.