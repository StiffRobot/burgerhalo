/mob/living/advanced/player/nt/lwizard
	loadout_to_use = /loadout/nt/lightwizard

/mob/living/advanced/player/nt/lwizard/default_appearance()
	. = ..()
	src.add_organ(/obj/item/organ/internal/implant/hand/left/iff/nanotrasen)
	src.add_organ(/obj/item/organ/internal/implant/head/loyalty/nanotrasen)
	return.

/mob/living/advanced/player/nt/lwizard/prepare()
	. = ..()
	name = "[gender == MALE ? FIRST_NAME_MALE : FIRST_NAME_FEMALE] [LAST_NAME]"
	setup_name()
	to_chat(span("danger","�������� ��� � ���� � ��������� �������������."))
	to_chat(span("danger","�� ������ �� ��, ��� � �� �� ����� �� ���������� - ���������� �������� �������� ����� ����������. ����������� ��� ����� ������� ����������� ���������� � ��������."))
	return .

/mob/living/advanced/player/nt/lwizard/setup_name()
	. = ..()
	name = "Wizard of Light"
	return TRUE

/mob/living/advanced/player/nt/lwizard/add_species_languages()
	. = ..()
	known_languages[LANGUAGE_RUSSIAN] = TRUE
	return .
