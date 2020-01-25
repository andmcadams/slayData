local SlayerConsts = require ('Module:Sandbox/User:Andmcadams/SlayerConsts' )

local p = {}

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
	for quest_name, _ in SlayerConsts.get_quest_pairs() do
		p.set_quest_incomplete(status, quest_name)
	end

	for unlock_name, _ in SlayerConsts.get_unlock_pairs() do
		p.set_unlock_inactive(status, unlock_name)
	end

	for other_name, _ in SlayerConsts.get_other_pairs() do
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

-- Stub Functions

--------------------------------------------------------------------------------
-- These functions are just wrappers for the functions to access the tables in
-- the SlayerConsts module. They are included for convenience so both this
-- module and SlayerConsts do not need to be required by as many modules.
--------------------------------------------------------------------------------

function p.get_unlock_id(name)
	return SlayerConsts.get_unlock_id(name)
end

function p.get_unlock_name(unlockId)
	return SlayerConsts.get_unlock_name(unlockId)
end

function p.get_unlock_pairs()
	return SlayerConsts.get_unlock_pairs()
end

function p.get_quest_id(name)
	return SlayerConsts.get_quest_id(name)
end

function p.get_quest_name(questId)
	return SlayerConsts.get_quest_name(questId)
end

function p.get_quest_pairs()
	return SlayerConsts.get_quest_pairs()
end

function p.get_other_id(name)
	return SlayerConsts.get_other_id(name)
end

function p.get_other_name(otherId)
	return SlayerConsts.get_other_name(otherId)
end

function p.get_other_pairs()
	return SlayerConsts.get_other_pairs()
end

function p.get_monster_id(name)
	return SlayerConsts.get_monster_id(name)
end

function p.get_monster_name(monsterId)
	return SlayerConsts.get_monster_name(monsterId)
end

function p.get_monster_pairs()
	return SlayerConsts.get_monster_pairs()
end

--------------------------------------------------------------------------------
--
--
-- End of stub functions
--
--
--------------------------------------------------------------------------------


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
			-- Remember that v is an int containing the id of the quest, unlock,
			-- or other. Since status stores strings as keys we can index in via getting the name.
			if quests[SlayerConsts.get_quest_name(v)] == false then
				return false
			end
		elseif k == 'Unlock' then
			-- Note that Stop the Wyvern is handled here.
			if unlocks[SlayerConsts.get_unlock_name(v)] == false and v ~= SlayerConsts.UNLOCK_STOP_THE_WYVERN then
				return false
			elseif unlocks[SlayerConsts.get_unlock_name(v)] == true and v == SlayerConsts.UNLOCK_STOP_THE_WYVERN then
				return false
			end
		elseif k == 'Other' then
			if other[SlayerConsts.get_other_name(v)] == false then
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
	  if SlayerConsts.get_monster_id(blockName) == taskMonsterId then
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
			if taskMonsterId == SlayerConsts.get_monster_id(taskName) then
				table.insert(mastersThatAssign, tableName)
			end
		end
	end
	return mastersThatAssign
end


return p
