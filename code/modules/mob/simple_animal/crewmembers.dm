/mob/living/simple_animal/crewmember
	name = "Unknown"
	icon = 'critter.dmi'
	icon_state = "crewmember"
	icon_living = "crewmember"
	icon_dead = "crewmember_dead"
	speak_emote = list("�������", "������ ������������")
	emote_hear = list("�������� ���� ��� ���","������")
	emote_see = list("������� �������", "������")
	speak_chance = 1
	turns_per_move = 5
	attacktext = "������� ����������� ����"
	attack_sound = 'sound/weapons/punch1.ogg'
	response_help = "����� ������� �"
	response_disarm = "�������"
	response_harm = "����"

/mob/living/simple_animal/crewmember/captain
	name = "John Cobb"
	icon = 'critter.dmi'
	icon_state = "crewmember_cap"
	icon_living = "crewmember_cap"
	icon_dead = "crewmember_cap_dead"
	gender = MALE
	speak = list("����... �� ��� �� ��...","��� ����� ���������������...","��� �� ������, �������...","��-��...")
	health = 100
	harm_intent_damage = 8
	melee_damage_lower = 10
	melee_damage_upper = 10