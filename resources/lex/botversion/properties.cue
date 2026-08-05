package botversion

#Properties: {
	BotId: #Id
	BotVersionLocaleSpecification: #BotVersionLocaleSpecificationList
	Description?: #Description
}

#BotVersionLocaleDetails: {
	SourceBotVersion: #BotVersion
}

#BotVersionLocaleSpecification: {
	BotVersionLocaleDetails: #BotVersionLocaleDetails
	LocaleId: #LocaleId
}
