/obj/machinery/computer/information
	name = "informational computer"
	desc = "����� ����� �� ���."
	icon_state = "info1"

/obj/machinery/computer/information/attack_hand(var/mob/user as mob)
	playsound(src.loc, 'sound/machines/input1.ogg', 15, 1, 1)
	usr << "<B>\red 3 �������, 2149 ���. �����.</B>"
	sleep(5)
	playsound(src.loc, 'sound/machines/beep.ogg', 15, 1, 1)
	usr << "������ ����������� ������� '�����', ��� ���� ��������&#255; ��������. ������� ���������� ������� ������� ������������ ������, �� ������ ���������&#255; �� ���� � ������� ��� ����� ������ ��������� ��&#255; ������������, ����� ���� ������ �� �������� � �����������. �� ������ �������� �����������, ������������ �� �� - �� ������ �������� ���� ��������&#255;."
	sleep(10)
	playsound(src.loc, 'sound/machines/input1.ogg', 15, 1, 1)
	usr << "<B>�����������:</B> ��������� ������."