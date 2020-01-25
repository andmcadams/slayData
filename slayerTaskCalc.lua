local Paramtest = require( 'Module:Paramtest' )
local Slayerlib = require ('Module:Sandbox/User:Andmcadams/Slayer' )

local p = {}

function p.invoke_main( frame )
	local result = p.main( frame:getParent().args )
	
	return result
end


function p.tobool(str)
	if str == 'true' then
		return true
	end
	return false
end

function p.main( args )
	-- Handle inputs
	local combatLevel, slayerLevel, defenceLevel, firemakingCheck, agilityStrengthCheck, magicCheck = Paramtest.defaults{
		{ tonumber(args.combatLevel), 1 },
		{ tonumber(args.slayerLevel), 1 },
		{ tonumber(args.defenceLevel), 1 },
		{ args.firemakingCheck, true },
		{ args.agilityStrengthCheck, true },
		{ args.magicCheck, true }
	}

	local block1, block2, block3, block4, block5, block6 = Paramtest.defaults{
		{ args.block1, 'None'},
		{ args.block2, 'None'},
		{ args.block3, 'None'},
		{ args.block4, 'None'},
		{ args.block5, 'None'},
		{ args.block6, 'None'},
	}

	local blocks = {
		block1,
		block2,
		block3,
		block4,
		block5,
		block6
	}

	-- Magic number 33 since this is the highest level required for firemaking
	local firemakingLevel = 33
	if p.tobool(firemakingCheck) == false then
		firemakingLevel = 1
	end
	local agilityLevel, strengthLevel = 60, 60
	if p.tobool(agilityStrengthCheck) == false then
		agilityLevel = 1
	end

	-- Magic number 50 since this is the highest level required for magic
	local magicLevel = 50
	if p.tobool(magicCheck) == false then
		magicLevel = 1
	end
	
	-- Need to create a stats table, unlocks table, quests table, and other table
	local stats = {
		Combat = combatLevel,
		Slayer = slayerLevel,
		Magic = magicLevel,
		Agility = agilityLevel,
		Strength = strengthLevel,
		Firemaking = firemakingLevel,
		Defence = defenceLevel
	}

	-- Since the checkboxes return the name of the unlock (same as in UNLOCK_IDS)
	-- if checked and nil if not checked, this array will only be the names of
	-- activated unlocks.
	local unlocks = { args.seeingRed, args.iHopeYouMithMe, args.watchTheBirdie,
		args.hotStuff, args.reptileGotRipped, args.likeABoss, args.stopTheWyvern, 
		args.basilocked
	}

	-- Similarly, this will become a list of completed quests.
	local quests = {
		args.priestInPeril,
		args.dragonSlayerII,
		args.dragonSlayer,
		args.cabinFever,
		args.horrorFromTheDeep,
		args.mourningsEndPartII,
		args.desertTreasure,
		args.regicide,
		args.boneVoyage,
		args.lostCity,
		args.elementalWorkshopI,
		args.deathPlateau,
		args.lunarDiplomacy,
		args.olafsQuest,
		args.contact,
		args.rumDeal,
		args.skippyAndTheMogres,
		args.deathToTheDorgeshuun,
		args.legendsQuest,
		args.ernestTheChicken,
		args.royalTrouble,
		args.hauntedMine
	}
	
	-- List of completed other activities.
	local other = {
		args.ancientCavern,
		args.barbarianTraining
	}
	
	-- Create the player status given our various inputs
	status = Slayerlib.create_status(stats, quests, unlocks, other, blocks)

	-- Get the entire task table of the chosen slayer master.
	masterTable = Slayerlib.get_table(args.master)
	
	-- Get the tables of available and unavailable tasks.
	effectiveTable, unavailableTable = Slayerlib.get_effective_table(masterTable, status, true)

	-- Pass these to calculate percents.
	local results = p.calculate_percents(effectiveTable, unavailableTable)
	
	-- Render the results
	return p.render_table(results)
end

--
-- Calculates the percent chance of getting each task from effectiveTable.
--
-- @param effectiveTable {table} A table of all tasks the player can be assigned.
-- @param unavailableTable {table} A table of all tasks the player cannot be assigned.
--
-- @return {table} Returns a table that contains the task name as key and the
--					percent chance (decimal form) of getting it as the value.
--
function p.calculate_percents(effectiveTable, unavailableTable)
	local totalWeight = 0
	for k, v in pairs(effectiveTable) do
		totalWeight = totalWeight + v['weight']
	end

	local percentageTable = {}
	for k, v in pairs(effectiveTable) do
		percentageTable[v['name']] = v['weight']/totalWeight
	end

	for k, v in pairs(unavailableTable) do
		percentageTable[v['name']] = 0
	end

	return percentageTable
end

-- Render the results table.
function p.render_table(results)
	local resultsDiv = mw.html.create( 'div' )
	local resultsTable = mw.html.create( 'table' )
	resultsTable:addClass( 'wikitable' )
		:addClass( 'sortable')
		:addClass( 'align-center-1' )
		:tag( 'tr' )
			:tag( 'th' )
				:wikitext( 'Results' )
				:attr( 'colspan', 2 )
			:done()
		:done()
		:tag( 'tr' )
			:tag( 'th' )
				:wikitext( 'Monster' )
			:done()
			:tag( 'th' )
				:wikitext( 'Percent Chance Assigned')
			:done()
		:done()
	:done()

	for k, v in pairs(results) do
		resultsTable:tag( 'tr' )
			:tag( 'td' )
				:wikitext( k )
			:done()
			:tag( 'td' )
				:wikitext( string.format("%.2f", 100*v ) .. "%")
				:attr( 'align', 'right' )
			:done()
		:done()
	end

	resultsDiv:node(tostring(resultsTable))
	return resultsDiv
end

return p
