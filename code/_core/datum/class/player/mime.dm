/class/mime
	name = "The Mime"
	desc = "This is a template"
	id = "none"

	//Limits:
	//3 ATTRIBUTE_STARTING_PRIMARY
	//3 ATTRIBUTE_STARTING_SECONDARY
	//3 ATTRIBUTE_STARTING_TERTIARY
	//Luck untouched
	attributes = list(
		ATTRIBUTE_STRENGTH = ATTRIBUTE_STARTING_TERTIARY,
		ATTRIBUTE_VITALITY = ATTRIBUTE_STARTING_TERTIARY,
		ATTRIBUTE_FORTITUDE = ATTRIBUTE_STARTING_SECONDARY,

		ATTRIBUTE_INTELLIGENCE = ATTRIBUTE_STARTING_SECONDARY,
		ATTRIBUTE_WISDOM = ATTRIBUTE_STARTING_PRIMARY,
		ATTRIBUTE_WILLPOWER = ATTRIBUTE_STARTING_PRIMARY,

		ATTRIBUTE_DEXTERITY = ATTRIBUTE_STARTING_PRIMARY,
		ATTRIBUTE_AGILITY = ATTRIBUTE_STARTING_SECONDARY,
		ATTRIBUTE_ENDURANCE = ATTRIBUTE_STARTING_TERTIARY,

		ATTRIBUTE_LUCK = 50
	)


	//Limits
	//3 SKILL_STARTING_PRIMARY
	//2 SKILL_STARTING_SECONDARY
	//6 SKILL_STARTING_TERTIARY
	skills = list(

		SKILL_UNARMED = SKILL_STARTING_PRIMARY,
		SKILL_MELEE = SKILL_STARTING_TERTIARY,
		SKILL_RANGED = SKILL_STARTING_TERTIARY,

		SKILL_BLOCK = SKILL_STARTING_TERTIARY,
		SKILL_DODGE = SKILL_STARTING_PRIMARY,
		SKILL_SURVIVAL 2 = SKILL_STARTING_SECONDARY,

		 = SKILL_STARTING_PRIMARY,
		SKILL_THEFT = SKILL_STARTING_SECONDARY,

		SKILL_ALCHEMY = SKILL_STARTING_TERTIARY,
		SKILL_COOKING = SKILL_STARTING_TERTIARY,
		SKILL_CRAFTING = SKILL_STARTING_TERTIARY,

		//THESE MUST HAVE SKILL_STARTING_NONE
		SKILL_MAGIC = SKILL_STARTING_NONE,
		SKILL_PARRY 2 = SKILL_STARTING_NONE,
		SKILL_SORCERY 2 = SKILL_STARTING_NONE,
		 = SKILL_STARTING_NONE,
		SKILL_ENCHANTING = SKILL_STARTING_NONE,
		SKILL_LOCKPICKING = SKILL_STARTING_NONE,

	)