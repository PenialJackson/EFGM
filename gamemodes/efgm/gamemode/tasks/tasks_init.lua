-- If requirements aren't set, task is unlocked at start
-- Also, tasks are only unlocked if ALL requirements are met, this should change at some point
REQUIREMENT = {}
REQUIREMENT.PlayerStat = 1 -- Only supports NWInt's rn
REQUIREMENT.QuestCompletion = 2
REQUIREMENT.ItemDiscovered = 3 -- (Not implemented) So special quests can open if like, idk, the player finds a certain key
REQUIREMENT.AreaVisited = 4 -- (Not fully implemented)

OBJECTIVE = {}
OBJECTIVE.Kill = 1
OBJECTIVE.Extract = 2
OBJECTIVE.GiveItem = 3
OBJECTIVE.Pay = 4
OBJECTIVE.QuestItem = 5
OBJECTIVE.VisitArea = 6

REWARD = {}
REWARD.PlayerStat = 1
REWARD.Item = 2
REWARD.MarketUnlock = 3

SAVEON = {}
SAVEON.Progress = 1
SAVEON.Extract = 2
SAVEON.ObjectiveComplete = 3
SAVEON.TaskComplete = 4

-- requirment functions
NewRequirement = {}

function NewRequirement.PlayerStat(count, stat)
	local req = {}

	req.type = REQUIREMENT.PlayerStat
	req.count = count or 1
	req.info = stat

	return req
end

function NewRequirement.QuestCompletion(taskName)
	local req = {}

	req.type = REQUIREMENT.QuestCompletion
	req.count = 1
	req.info = taskName

	return req
end

-- objective functions
NewObjective = {}

function NewObjective.Kill(count, mapName, areaName, areaDisplayName, weapon, useCategory, minRange, maxRange, reqHeadshot, whenToSave, customObjectiveText)
	local obj = {}

	obj.type = OBJECTIVE.Kill
	obj.count = count or 1
	obj.mapName = mapName
	obj.areaName = areaName
	obj.areaDisplayName = areaDisplayName
	obj.weapon = weapon
	obj.useCategory = useCategory
	obj.minRange = minRange
	obj.maxRange = maxRange
	obj.reqHeadshot = reqHeadshot
	obj.whenToSave = whenToSave or SAVEON.Progress
	obj.customObjectiveText = customObjectiveText

	return obj
end

function NewObjective.Extract(count, mapName, extractName, extractDisplayName, whenToSave, customObjectiveText)
	local obj = {}

	obj.type = OBJECTIVE.Extract
	obj.count = count or 1
	obj.mapName = mapName
	obj.extractName = extractName
	obj.extractDisplayName = extractDisplayName
	obj.whenToSave = whenToSave or SAVEON.Progress
	obj.customObjectiveText = customObjectiveText

	return obj
end

function NewObjective.GiveItem(count, itemName, customObjectiveText)
	local obj = {}

	obj.type = OBJECTIVE.GiveItem
	obj.count = count or 1
	obj.itemName = itemName
	obj.whenToSave = SAVEON.Progress
	obj.customObjectiveText = customObjectiveText

	return obj
end

function NewObjective.Pay(count, customObjectiveText)
	local obj = {}

	obj.type = OBJECTIVE.Pay
	obj.count = count or 1
	obj.whenToSave = SAVEON.Progress
	obj.customObjectiveText = customObjectiveText

	return obj
end

function NewObjective.QuestItem(itemName, mapName, areaDisplayName, customObjectiveText)
	local obj = {}

	obj.type = OBJECTIVE.QuestItem
	obj.itemName = itemName
	obj.mapName = mapName
	obj.areaDisplayName = areaDisplayName
	obj.whenToSave = SAVEON.Extract
	obj.customObjectiveText = customObjectiveText

	return obj
end

function NewObjective.VisitArea(mapName, areaName, areaDisplayName, whenToSave)
	local obj = {}

	obj.type = OBJECTIVE.VisitArea
	obj.mapName = mapName
	obj.areaName = areaName
	obj.areaDisplayName = areaDisplayName
	obj.whenToSave = whenToSave or SAVEON.Progress
	obj.customObjectiveText = customObjectiveText

	return obj
end

-- objective conditions
NewCondition = {}

function NewCondition.RangeMin(rangeMeters)
	local cond = {}

	cond.type = OBJCONDITION.RangeMin
	cond.count = rangeMeters

	return cond
end

function NewCondition.RangeMax(rangeMeters)
	local cond = {}

	cond.type = OBJCONDITION.RangeMax
	cond.count = rangeMeters

	return cond
end

-- reward functions
NewReward = {}

function NewReward.PlayerStat(count, stat)
	local reward = {}

	reward.type = REWARD.PlayerStat
	reward.count = count or 1
	reward.info = stat

	return reward
end

EFGM.TASKS = {}
