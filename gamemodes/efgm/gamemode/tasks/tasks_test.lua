EFGM.TASKS["paytest"] = {
	name = "testing the pay system",
	description = "i hate fuckin lua",
	messageOverride = "I FUCKING HATE LUA",
	traderIcon = Material("traders/generic.png", "smooth"),

	objectives = {
		NewObjective.Pay(100000)
	},

	rewards = {
		NewReward.PlayerStat(420, "Experience"),
		NewReward.PlayerStat(100000, "Money")
	},

	uibackground = Material("taskbg/concrete/general.jpg", "smooth")
}

EFGM.TASKS["qitest"] = {
	name = "testing quest items",
	description = "i hate fuckin lua",
	messageOverride = "I FUCKING HATE LUA",
	traderIcon = Material("traders/generic.png", "smooth"),

	objectives = {
		NewObjective.QuestItem("efgm_task_briefcase", "efgm_concrete")
	},

	rewards = {
		NewReward.PlayerStat(420, "Experience"),
		NewReward.PlayerStat(100000, "Money")
	},

	uibackground = Material("taskbg/concrete/general.jpg", "smooth")
}
