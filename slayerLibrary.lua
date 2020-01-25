local p = {}

p.UNLOCK_SEEING_RED = 1
p.UNLOCK_I_HOPE_YOU_MITH_ME = 2
p.UNLOCK_WATCH_THE_BIRDIE = 3
p.UNLOCK_HOT_STUFF = 4
p.UNLOCK_REPTILE_GOT_RIPPED = 5
p.UNLOCK_LIKE_A_BOSS = 6
p.UNLOCK_STOP_THE_WYVERN = 7
p.UNLOCK_BASILOCKED = 8

p.QUEST_PRIEST_IN_PERIL = 1
p.QUEST_DRAGON_SLAYER_II = 2
p.QUEST_DRAGON_SLAYER = 3
p.QUEST_CABIN_FEVER = 4
p.QUEST_HORROR_FROM_THE_DEEP = 5
p.QUEST_MOURNINGS_END_PART_II = 6
p.QUEST_DESERT_TREASURE = 7
p.QUEST_REGICIDE = 8
p.QUEST_BONE_VOYAGE = 9
p.QUEST_LOST_CITY = 10
p.QUEST_ELEMENTAL_WORKSHOP_I = 11
p.QUEST_DEATH_PLATEAU = 12
p.QUEST_LUNAR_DIPLOMACY = 13
p.QUEST_OLAFS_QUEST = 14
p.QUEST_CONTACT = 15
p.QUEST_RUM_DEAL = 16
p.QUEST_SKIPPY_AND_THE_MOGRES = 17
p.QUEST_DEATH_TO_THE_DORGESHUUN = 18
p.QUEST_LEGENDS_QUEST = 19
p.QUEST_ERNEST_THE_CHICKEN = 20
p.QUEST_ROYAL_TROUBLE = 21
p.QUEST_HAUNTED_MINE = 22

p.ENTERED_ANCIENT_CAVERN = 1
p.BARBARIAN_TRAINING = 2
p.TASK_NONE = 0
p.TASK_ABERRANT_SPECTRES = 1
p.TASK_ABYSSAL_DEMONS = 2
p.TASK_ADAMANT_DRAGONS = 3
p.TASK_ANKOU = 4
p.TASK_AVIANSIE = 5
p.TASK_BANSHEES = 6
p.TASK_BASILISK = 7
p.TASK_BATS = 8
p.TASK_BEARS = 9
p.TASK_BIRDS = 10
p.TASK_BLACK_DEMONS = 11
p.TASK_BLACK_DRAGONS = 12
p.TASK_BLOODVELD = 13
p.TASK_BLUE_DRAGONS = 14
p.TASK_BOSS = 15
p.TASK_BRINE_RATS = 16
p.TASK_BRONZE_DRAGONS = 17
p.TASK_CATABLEPON = 18
p.TASK_CAVE_BUGS = 19
p.TASK_CAVE_CRAWLERS = 20
p.TASK_CAVE_HORRORS = 21
p.TASK_CAVE_KRAKEN = 22
p.TASK_CAVE_SLIME = 23
p.TASK_COCKATRICE = 24
p.TASK_COWS = 25
p.TASK_CRAWLING_HANDS = 26
p.TASK_CROCODILES = 27
p.TASK_DAGANNOTH = 28
p.TASK_DARK_BEASTS = 29
p.TASK_DOGS = 30
p.TASK_DRAKES = 31
p.TASK_DUST_DEVILS = 32
p.TASK_DWARVES = 33
p.TASK_EARTH_WARRIORS = 34
p.TASK_ELVES = 35
p.TASK_FEVER_SPIDERS = 36
p.TASK_FIRE_GIANTS = 37
p.TASK_FLESH_CRAWLERS = 38
p.TASK_FOSSIL_ISLAND_WYVERNS = 39
p.TASK_GARGOYLES = 40
p.TASK_GHOSTS = 41
p.TASK_GHOULS = 42
p.TASK_GOBLINS = 43
p.TASK_GREATER_DEMONS = 44
p.TASK_GREEN_DRAGONS = 45
p.TASK_HARPIE_BUG_SWARMS = 46
p.TASK_HELLHOUNDS = 47
p.TASK_HILL_GIANTS = 48
p.TASK_HOBGOBLINS = 49
p.TASK_ICE_GIANTS = 50
p.TASK_ICE_WARRIORS = 51
p.TASK_ICEFIENDS = 52
p.TASK_INFERNAL_MAGES = 53
p.TASK_IRON_DRAGONS = 54
p.TASK_JELLIES = 55
p.TASK_JUNGLE_HORRORS = 56
p.TASK_KALPHITES = 58
p.TASK_KILLERWATTS = 59
p.TASK_KURASK = 60
p.TASK_LESSER_DEMONS = 61
p.TASK_LIZARDS = 62
p.TASK_LIZARDMEN = 63
p.TASK_MINIONS_OF_SCABARAS = 64
p.TASK_MINOTAURS = 65
p.TASK_MITHRIL_DRAGONS = 66
p.TASK_MOGRES = 68
p.TASK_MOLANISK = 69
p.TASK_MONKEY = 70
p.TASK_MOSS_GIANTS = 71
p.TASK_MUTATED_ZYGOMITES = 72
p.TASK_NECHRYAEL = 73
p.TASK_OGRES = 74
p.TASK_OTHERWORLDLY_BEINGS = 75
p.TASK_PYREFIENDS = 76
p.TASK_RATS = 77
p.TASK_RED_DRAGONS = 78
p.TASK_ROCKSLUGS = 79
p.TASK_RUNE_DRAGONS = 80
p.TASK_SCORPIONS = 81
p.TASK_SEA_SNAKES = 82
p.TASK_SHADES = 83
p.TASK_SHADOW_WARRIORS = 84
p.TASK_SKELETAL_WYVERNS = 85
p.TASK_SKELETONS = 86
p.TASK_SMOKE_DEVILS = 87
p.TASK_SPIDERS = 88
p.TASK_SPIRITUAL_CREATURES = 90
p.TASK_STEEL_DRAGONS = 91
p.TASK_SUQAH = 92
p.TASK_TERROR_DOGS = 93
p.TASK_TROLLS = 94
p.TASK_TUROTH = 95
p.TASK_TZHAAR = 96
p.TASK_VAMPYRES = 97
p.TASK_WALL_BEASTS = 98
p.TASK_WATERFIEND = 99
p.TASK_WEREWOLVES = 100
p.TASK_WOLVES = 101
p.TASK_WYRMS = 102
p.TASK_ZOMBIES = 103
p.TASK_BANDITS = 104
p.TASK_CHAOS_DRUIDS = 105
p.TASK_DARK_WARRIORS = 106
p.TASK_ENTS = 107
p.TASK_LAVA_DRAGONS = 108
p.TASK_MAGIC_AXES = 109
p.TASK_MAMMOTHS = 110
p.TASK_REVENANTS = 111
p.TASK_ROGUES = 112
p.TASK_HYDRAS = 113

UNLOCK_IDS = {
	["Seeing red"] = p.UNLOCK_SEEING_RED,
	["I hope you mith me"] = p.UNLOCK_I_HOPE_YOU_MITH_ME,
	["Watch the birdie"] = p.UNLOCK_WATCH_THE_BIRDIE,
	["Hot stuff"] = p.UNLOCK_HOT_STUFF,
	["Reptile got ripped"] = p.UNLOCK_REPTILE_GOT_RIPPED,
	["Like a boss"] = p.UNLOCK_LIKE_A_BOSS,
	["Stop the Wyvern"] = p.UNLOCK_STOP_THE_WYVERN,
	["Basilocked"] = p.UNLOCK_BASILOCKED
}

function p.get_unlock_id(name)
	return UNLOCK_IDS[name]
end

function p.get_unlock_name(unlockId)
	for k, v in pairs(UNLOCK_IDS) do
		if v == unlockId then
			return k
		end
	end
end

QUEST_IDS = {
	["Priest in Peril"] = p.QUEST_PRIEST_IN_PERIL,
	["Dragon Slayer II"] = p.QUEST_DRAGON_SLAYER_II,
	["Dragon Slayer"] = p.QUEST_DRAGON_SLAYER,
	["Cabin Fever"] = p.QUEST_CABIN_FEVER,
	["Horror from the Deep"] = p.QUEST_HORROR_FROM_THE_DEEP,
	["Mourning's End Part II"] = p.QUEST_MOURNINGS_END_PART_II,
	["Desert Treasure"] = p.QUEST_DESERT_TREASURE,
	["Regicide"] = p.QUEST_REGICIDE,
	["Bone Voyage"] = p.QUEST_BONE_VOYAGE,
	["Lost City"] = p.QUEST_LOST_CITY,
	["Elemental Workshop I"] = p.QUEST_ELEMENTAL_WORKSHOP_I,
	["Death Plateau"] = p.QUEST_DEATH_PLATEAU,
	["Lunar Diplomacy"] = p.QUEST_LUNAR_DIPLOMACY,
	["Olaf's Quest"] = p.QUEST_OLAFS_QUEST,
	["Contact!"] = p.QUEST_CONTACT,
	["Rum Deal"] = p.QUEST_RUM_DEAL,
	["Skippy and the Mogres"] = p.QUEST_SKIPPY_AND_THE_MOGRES,
	["Death to the Dorgeshuun"] = p.QUEST_DEATH_TO_THE_DORGESHUUN,
	["Legends' Quest"] = p.QUEST_LEGENDS_QUEST,
	["Ernest the Chicken"] = p.QUEST_ERNEST_THE_CHICKEN,
	["Royal Trouble"] = p.QUEST_ROYAL_TROUBLE,
	["Haunted Mine"] = p.QUEST_HAUNTED_MINE
}

function p.get_quest_id(name)
	return QUEST_IDS[name]
end

function p.get_quest_name(questId)
	for k, v in pairs(QUEST_IDS) do
		if v == questId then
			return k
		end
	end
end

OTHER_IDS = {
	["Ancient Cavern"] = p.ENTERED_ANCIENT_CAVERN,
	["Barbarian Training"] = p.BARBARIAN_TRAINING
}

function p.get_other_id(name)
	return OTHER_IDS[name]
end

function p.get_other_name(otherId)
	for k, v in pairs(OTHER_IDS) do
		if v == otherId then
			return k
		end
	end
end

MONSTER_IDS = {
	["None"] = p.TASK_NONE,
	["Aberrant spectres"] = p.TASK_ABERRANT_SPECTRES,
	["Abyssal demons"] = p.TASK_ABYSSAL_DEMONS,
	["Adamant dragons"] = p.TASK_ADAMANT_DRAGONS,
	["Ankou"] = p.TASK_ANKOU,
	["Aviansie"] = p.TASK_AVIANSIE,
	["Banshees"] = p.TASK_BANSHEES,
	["Basilisk"] = p.TASK_BASILISK,
	["Bats"] = p.TASK_BATS,
	["Bears"] = p.TASK_BEARS,
	["Birds"] = p.TASK_BIRDS,
	["Black demons"] = p.TASK_BLACK_DEMONS,
	["Black dragons"] = p.TASK_BLACK_DRAGONS,
	["Bloodveld"] = p.TASK_BLOODVELD,
	["Blue dragons"] = p.TASK_BLUE_DRAGONS,
	["Boss"] = p.TASK_BOSS,
	["Brine rats"] = p.TASK_BRINE_RATS,
	["Bronze dragons"] = p.TASK_BRONZE_DRAGONS,
	["Catablepon"] = p.TASK_CATABLEPON,
	["Cave bugs"] = p.TASK_CAVE_BUGS,
	["Cave crawlers"] = p.TASK_CAVE_CRAWLERS,
	["Cave horrors"] = p.TASK_CAVE_HORRORS,
	["Cave kraken"] = p.TASK_CAVE_KRAKEN,
	["Cave slime"] = p.TASK_CAVE_SLIME,
	["Cockatrice"] = p.TASK_COCKATRICE,
	["Cows"] = p.TASK_COWS,
	["Crawling Hands"] = p.TASK_CRAWLING_HANDS,
	["Crocodiles"] = p.TASK_CROCODILES,
	["Dagannoth"] = p.TASK_DAGANNOTH,
	["Dark beasts"] = p.TASK_DARK_BEASTS,
	["Dogs"] = p.TASK_DOGS,
	["Drakes"] = p.TASK_DRAKES,
	["Dust devils"] = p.TASK_DUST_DEVILS,
	["Dwarves"] = p.TASK_DWARVES,
	["Earth warriors"] = p.TASK_EARTH_WARRIORS,
	["Elves"] = p.TASK_ELVES,
	["Fever spiders"] = p.TASK_FEVER_SPIDERS,
	["Fire giants"] = p.TASK_FIRE_GIANTS,
	["Flesh Crawlers"] = p.TASK_FLESH_CRAWLERS,
	["Fossil Island Wyverns"] = p.TASK_FOSSIL_ISLAND_WYVERNS,
	["Gargoyles"] = p.TASK_GARGOYLES,
	["Ghosts"] = p.TASK_GHOSTS,
	["Ghouls"] = p.TASK_GHOULS,
	["Goblins"] = p.TASK_GOBLINS,
	["Greater demons"] = p.TASK_GREATER_DEMONS,
	["Green dragons"] = p.TASK_GREEN_DRAGONS,
	["Harpie Bug Swarms"] = p.TASK_HARPIE_BUG_SWARMS,
	["Hellhounds"] = p.TASK_HELLHOUNDS,
	["Hill Giants"] = p.TASK_HILL_GIANTS,
	["Hobgoblins"] = p.TASK_HOBGOBLINS,
	["Ice giants"] = p.TASK_ICE_GIANTS,
	["Ice warriors"] = p.TASK_ICE_WARRIORS,
	["Icefiends"] = p.TASK_ICEFIENDS,
	["Infernal Mages"] = p.TASK_INFERNAL_MAGES,
	["Iron dragons"] = p.TASK_IRON_DRAGONS,
	["Jellies"] = p.TASK_JELLIES,
	["Jungle horrors"] = p.TASK_JUNGLE_HORRORS,
	["Kalphites"] = p.TASK_KALPHITES,
	["Killerwatts"] = p.TASK_KILLERWATTS,
	["Kurask"] = p.TASK_KURASK,
	["Lesser demons"] = p.TASK_LESSER_DEMONS,
	["Lizards"] = p.TASK_LIZARDS,
	["Lizardmen"] = p.TASK_LIZARDMEN,
	["Minions of Scabaras"] = p.TASK_MINIONS_OF_SCABARAS,
	["Minotaurs"] = p.TASK_MINOTAURS,
	["Mithril dragons"] = p.TASK_MITHRIL_DRAGONS,
	["Mogres"] = p.TASK_MOGRES,
	["Molanisk"] = p.TASK_MOLANISK,
	["Monkey"] = p.TASK_MONKEY,
	["Moss giants"] = p.TASK_MOSS_GIANTS,
	["Mutated Zygomites"] = p.TASK_MUTATED_ZYGOMITES,
	["Nechryael"] = p.TASK_NECHRYAEL,
	["Ogres"] = p.TASK_OGRES,
	["Otherworldly beings"] = p.TASK_OTHERWORLDLY_BEINGS,
	["Pyrefiends"] = p.TASK_PYREFIENDS,
	["Rats"] = p.TASK_RATS,
	["Red dragons"] = p.TASK_RED_DRAGONS,
	["Rockslugs"] = p.TASK_ROCKSLUGS,
	["Rune dragons"] = p.TASK_RUNE_DRAGONS,
	["Scorpions"] = p.TASK_SCORPIONS,
	["Sea snakes"] = p.TASK_SEA_SNAKES,
	["Shades"] = p.TASK_SHADES,
	["Shadow warriors"] = p.TASK_SHADOW_WARRIORS,
	["Skeletal Wyverns"] = p.TASK_SKELETAL_WYVERNS,
	["Skeletons"] = p.TASK_SKELETONS,
	["Smoke devils"] = p.TASK_SMOKE_DEVILS,
	["Spiders"] = p.TASK_SPIDERS,
	["Spiritual creatures"] = p.TASK_SPIRITUAL_CREATURES,
	["Steel dragons"] = p.TASK_STEEL_DRAGONS,
	["Suqah"] = p.TASK_SUQAH,
	["Terror dogs"] = p.TASK_TERROR_DOGS,
	["Trolls"] = p.TASK_TROLLS,
	["Turoth"] = p.TASK_TUROTH,
	["TzHaar"] = p.TASK_TZHAAR,
	["Vampyres"] = p.TASK_VAMPYRES,
	["Wall beasts"] = p.TASK_WALL_BEASTS,
	["Waterfiend"] = p.TASK_WATERFIEND,
	["Werewolves"] = p.TASK_WEREWOLVES,
	["Wolves"] = p.TASK_WOLVES,
	["Wyrms"] = p.TASK_WYRMS,
	["Zombies"] = p.TASK_ZOMBIES,
	["Bandits"] = p.TASK_BANDITS,
	["Chaos druids"] = p.TASK_CHAOS_DRUIDS,
	["Dark warriors"] = p.TASK_DARK_WARRIORS,
	["Ents"] = p.TASK_ENTS,
	["Lava dragons"] = p.TASK_LAVA_DRAGONS,
	["Magic axes"] = p.TASK_MAGIC_AXES,
	["Mammoths"] = p.TASK_MAMMOTHS,
	["Revenants"] = p.TASK_REVENANTS,
	["Rogues"] = p.TASK_ROGUES,
	["Hydras"] = p.TASK_HYDRAS
}

function p.get_monster_id(name)
	return MONSTER_IDS[name]
end

function p.get_monster_name(monsterId)
	for k, v in pairs(MONSTER_IDS) do
		if v == monsterId then
			return k
		end
	end
end

--
-- Creates a "status" table that holds all information needed to check
-- if a player meets task requirements. This function is purely for convenience.
-- You are free to create your own table and pass it to the various functions,
-- but using this to create your table helps to keep it from being malformed.
--
-- The strings in quests, unlocks, other, and blocks arrays should match
-- EXACTLY with strings in the respective IDS table.
--
-- @param stats {table} A table whose keys and values will be used to update
--						the default stats table.
-- @param quests {array} An array containing strings of quests that should be
--						marked as complete.
-- @param unlocks {array} An array containing strings of unlocks that should be
--						marked as complete.
-- @param other {array} An array containing strings of other things that should be
--						marked as complete.
-- @param blocks {array} An array containing strings of tasks that should be
--						treated as blocked.
-- @return {table} See status table documentation below.
--
function p.create_status(stats, quests, unlocks, other, blocks)
	
	--[[
	The status table needs to keep this layout in order to check requirements.
	
	The Stats subtable should hold all levels for the player. You can put any
	key in the Stats subtable, but make sure to have all the keys required for
	your task data.
	
	The Quests subtable consists of names of quests for keys with values 
	true if completed and false if not completed.
	
	The Unlocks subtable consists of names of unlocks for keys with values
	true if unlocked and false if not unlocked. 
	
	The Other subtable consists of the names of other tasks (like barbarian
	training) as keys with values true if completed and false if not.
	
	If any required subtable key has value false, check_requirements will by 
	default return false (equivalent to not being able to get the task). 
	You need to manually change that function to check for unlocks which may 
	actually block a task. For example, Stop the Wyvern is an unlock,
	but unlocking it blocks the task. This logic is handled in check_requirements.
	
	]]
	local status = {
		Stats = {
			Combat = 3,
			Slayer = 1,
			Magic = 1,
			Agility = 1,
			Strength = 1,
			Firemaking = 1,
			Defence = 1
		},
		Quests = {},
		Unlocks = {},
		Other = {},
		Blocks = {}		
	}


	--[[
	Populate required quests, unlocks, and others with false values by default.
	]]
	for quest_name, _ in pairs(QUEST_IDS) do
		p.set_quest_incomplete(status, quest_name)
	end

	for unlock_name, _ in pairs(UNLOCK_IDS) do
		p.set_unlock_inactive(status, unlock_name)
	end

	for other_name, _ in pairs(OTHER_IDS) do
		p.set_other_incomplete(status, other_name)
	end


	--[[
	If you pass in stats, quests, or unlocks, they will be updated here.
	]]
	if stats ~= nil then
		for k, v in pairs(stats) do
			p.set_stat(status, k, v)
		end
	end

	if quests ~= nil then
		p.set_quests_complete(status, quests)
	end

	if unlocks ~= nil then
		p.set_unlocks_active(status, unlocks)
	end

	if other ~= nil then
		p.set_others_complete(status, other)
	end

	if blocks ~= nil then
		p.add_blocks(status, blocks)
	end

	return status
end


-- Status Helper Functions

--------------------------------------------------------------------------------
-- These helper functions should be somewhat self explanatory.
-- These are simply included in order to abstract away some of the code
-- that will need to be written concerning status.
-- Note that since Lua passes tables by reference, you should NOT set your status
-- equal to the result of any of these functions. None of them return anything.
--------------------------------------------------------------------------------
function p.set_stat(status, statName, statValue)
	status['Stats'][statName] = statValue
end

function p.set_quest_complete(status, questName)
	status['Quests'][questName] = true
end

function p.set_quest_incomplete(status, questName)
	status['Quests'][questName] = false
end

function p.set_quests_complete(status, questNames)
	if questNames ~= nil then
		for _, questName in pairs(questNames) do
			p.set_quest_complete(status, questName)
		end
	end
end

function p.set_quests_incomplete(status, questNames)
	if questNames ~= nil then
		for _, questName in pairs(questNames) do
			p.set_quest_incomplete(status, questName)
		end
	end
end

function p.set_unlock_active(status, unlockName)
	status['Unlocks'][unlockName] = true
end

function p.set_unlock_inactive(status, unlockName)
	status['Unlocks'][unlockName] = false
end

function p.set_unlocks_active(status, unlockNames)
	if unlockNames ~= nil then
		for _, unlockName in pairs(unlockNames) do
			p.set_unlock_active(status, unlockName)
		end
	end
end

function p.set_unlocks_inactive(status, unlockNames)
	if unlockNames ~= nil then
		for _, unlockName in pairs(unlockNames) do
			p.set_unlock_inactive(status, unlockName)
		end
	end
end

function p.set_other_complete(status, otherName)
	status['Other'][otherName] = true
end

function p.set_other_incomplete(status, otherName)
	status['Other'][otherName] = false
end

function p.set_others_complete(status, otherNames)
	if otherNames ~= nil then
		for _, otherName in pairs(otherNames) do
			p.set_other_complete(status, otherName)
		end
	end
end

function p.set_others_incomplete(status, otherNames)
	if otherNames ~= nil then
		for _, otherName in pairs(otherNames) do
			p.set_other_incomplete(status, otherName)
		end
	end
end

function p.add_block(status, taskName)
	-- Might want to check for dupes
	-- Might want to check for length, although not having a restriction
	-- here increases flexibility.
	table.insert(status['Blocks'], taskName)
end

function p.remove_block(status, taskName)
	toRemove = {}
	-- Note that because the indices are increasing and being
	-- added to the front of toRemove, the order of elements in
	-- toRemove will be decreasing.
	-- This avoids issues when removing table elements which changes
	-- indices of elements that come later in the table.
	for index=1,#status['Blocks'] do
		if status['Blocks'][index] == taskName then
			table.insert(toRemove, 1, index)
		end
	end
	for i=1,#toRemove do
		table.remove(status['Blocks'], toRemove[i])
	end
end

function p.add_blocks(status, taskNames)
	if taskNames ~= nil then
		for _, taskName in pairs(taskNames) do
			p.add_block(status, taskName)
		end
	end
end

function p.remove_blocks(status, taskNames)
	if taskNames ~= nil then
		for _, taskName in pairs(taskNames) do
			p.remove_block(status, taskName)
		end
	end	
end
--------------------------------------------------------------------------------
--
--
-- End of status helper functions
--
--
--------------------------------------------------------------------------------

-- List of all table names. If more masters are added, add them here.
-- DO NOT add masters who use the same table as someone else (ie. Steve)
local tableNames = {"Turael", "Krystilia", "Mazchna", "Vannaka", "Chaeldar", "Konar", "Nieve", "Duradel"}


-- Handle masters who use the same table here.
local masterNames = {
	Turael = tableNames[1],
	Krystilia = tableNames[2],
	Mazchna = tableNames[3],
	Vannaka = tableNames[4],
	Chaeldar = tableNames[5],
	Konar = tableNames[6],
	Nieve = tableNames[7],
	Steve = tableNames[7],
	Duradel = tableNames[8]
}

-- Given the name of a slayer master, this returns the name of the file that
-- contains their data. Since Nieve and Steve use the same table, they map to
-- the same value.
--
-- @param masterName {string} A string containing the name of the slayer master
--							whose table file you want to get.
-- @return {string} String of the file name for that slayer master's tasks.
--
function p.check_master(masterName)
	return masterNames[masterName]
end

--
-- Simple mw.loadData wrapper used to access data located on module subpages
--
-- @param master {string} Slayer master to retrieve table for
-- @return {table} Table of master task data
--
function p.get_table(master)
    local noErr, ret = pcall( mw.loadData, 'Module:Sandbox/User:Andmcadams/Slayer/' .. p.check_master(master) )

    if noErr then
        return ret
    end

    error( ret )
end

--
-- Check to see if a player with the current status has the requirements to get
-- the task with id taskMonsterId. This should stay internal to this module
-- to avoid extra complexity for those using the module.
--
-- @param status {table} The status table corresponding to the player. See
--						create_status() documentation for more details.
-- @param requirements {table} A table containing the requirements for this task.
--							 See below for an example of the expected layout.
-- @param taskMonsterId {int} The id of the task.  
-- @return {boolean} Returns false if any requirement is failed or if the task is
--					blocked. Returns true otherwise.
--
function check_requirements(status, requirements, taskMonsterId)
	quests = status['Quests']
	unlocks = status['Unlocks']
	other = status['Other']
	stats = status['Stats']
	blocks = status['Blocks']
	
--	Example requirements table
--	requirements= {Slayer= 66, Combat= 60, Unlock= "Stop the Wyvern", Quest= "Bone Voyage"}
--	In this implementation, values are always expected to be singular.
--	It may be that a slayer monster in the future requires quests A and B,
--	where A does not require B and B does not require A. Then the data and this
--	module will need to be updated to store Quests as arrays and check each quest.
--	EX:
-- requirements= {Slayer= 66, Combat= 60, Unlock= {"Stop the Wyvern"}, Quest= {"Bone Voyage"}}

	for k, v in pairs(requirements) do
		if k == 'Quest' then
			-- Remember that v is a string containing the name of the quest, unlock,
			-- or other. Since status stores these as keys we can index in.
			if quests[p.get_quest_name(v)] == false then
				return false
			end
		elseif k == 'Unlock' then
			-- Note that Stop the Wyvern is handled here.
			if unlocks[p.get_unlock_name(v)] == false and v ~= p.UNLOCK_STOP_THE_WYVERN then
				return false
			elseif unlocks[p.get_unlock_name(v)] == true and v == p.UNLOCK_STOP_THE_WYVERN then
				return false
			end
		elseif k == 'Other' then
			if other[p.get_other_name(v)] == false then
				return false
			end
		elseif stats[k] ~= nil then
			if stats[k] < v then
				return false
			end
		else
			return false
		end
	end
	for i, blockName in ipairs(blocks) do
	  if MONSTER_IDS[blockName] == taskMonsterId then
	  	return false
	  end
	end
	return true
end


--
-- Reduces the given table down to a table of only tasks the player described by
-- status can be assigned. Optionally, this can also give you the tasks the
-- player cannot be assigned.
--
-- @param tableToReduce {table} The table of tasks to be reduced. This should
--								be of the form returned by get_table
-- @param status {table} The status table corresponding to the player. See
--						create_status() documentation for more details.
-- @param returnDisallowed {boolean} If true, returns the tasks the player
--									cannot be assigned by this master as a second
--									return value.
-- @return {table, table|nil} Returns a table that contains only the tasks from tableToReduce
--					that the player can be assigned. If returnDisallowed is true,
--					a second table is returned that contains the tasks that cannot
--					be assigned to the player.
--
function p.get_effective_table(tableToReduce, status, returnDisallowed)
	local availableMonsterTable = {}
	local unavailableTable = {}
	for taskMonsterId, taskValue in pairs(tableToReduce) do
		if check_requirements(status, taskValue['requirements'], taskMonsterId) then
			availableMonsterTable[taskMonsterId] = taskValue
		elseif returnDisallowed == true then
			unavailableTable[taskMonsterId] = taskValue
		end
	end
	return availableMonsterTable, unavailableTable
end

--
-- Returns the names of the masters who can assign a given task to the player,
-- regardless of the players status.
--
-- @param taskName {string} The name of the task. This needs to match one of the
--							keys in MONSTER_IDS
-- @return {array} Returns an array containing the names of the masters who can
--					assign the task with name taskName.
--
function p.get_masters_that_assign(taskName)
	mastersThatAssign = {}
	for name, tableName in pairs(masterNames) do
		taskTable = p.get_table(tableName)
		for taskMonsterId, taskValue  in pairs(taskTable) do
			if taskMonsterId == MONSTER_IDS[taskName] then
				table.insert(mastersThatAssign, tableName)
			end
		end
	end
	return mastersThatAssign
end


return p
