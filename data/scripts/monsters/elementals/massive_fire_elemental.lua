local mType = Game.createMonsterType("Massive Fire Elemental")
local monster = {}

monster.description = "a massive fire elemental"
monster.experience = 1400
monster.outfit = {
	lookType = 242,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 1200
monster.maxHealth = 1200
monster.race = "fire"
monster.corpse = 6324
monster.speed = 238
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 80,
	random = 20,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = "small ruby", chance = 6100, maxCount = 2},
	{id = "gold coin", chance = 50000, maxCount = 100},
	{id = "gold coin", chance = 25000, maxCount = 100},
	{id = "gold coin", chance = 25000, maxCount = 12},
	{id = "wand of inferno", chance = 2240},
	{id = "fire sword", chance = 530},
	{id = "magma amulet", chance = 1300},
	{id = "magma boots", chance = 560},
	{id = "magma legs", chance = 210},
	{id = 9809, chance = 1330}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -300, effect = CONST_ME_DRAWBLOOD},
	{name ="firefield", interval = 2000, chance = 10, range = 7, shootEffect = CONST_ANI_FIRE, target = false},
	{name ="firefield", interval = 2000, chance = 10, range = 7, shootEffect = CONST_ANI_FIRE, target = true},
	{name ="combat", interval = 2000, chance = 10, minDamage = -200, maxDamage = -700, type = COMBAT_FIREDAMAGE, length = 7, spread = 3, target = false},
	{name ="combat", interval = 2000, chance = 15, minDamage = -60, maxDamage = -250, type = COMBAT_FIREDAMAGE, effect = CONST_ME_EXPLOSIONHIT, target = false},
	{name ="combat", interval = 2000, chance = 15, target = false}
}

monster.defenses = {
	defense = 30,
	armor = 30
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 40},
	{type = COMBAT_ENERGYDAMAGE, percent = 30},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -15},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
