package botversion

#Properties: {
	BotId: #Id
	BotVersionLocaleSpecification: #BotVersionLocaleSpecificationList
	Description?: #Description
}

#BotVersion: string & =~"^(DRAFT|[0-9]+)$" & strings.MinRunes(1) & strings.MaxRunes(5)

#BotVersionLocaleDetails: {
	SourceBotVersion: #BotVersion
}

#BotVersionLocaleSpecification: {
	BotVersionLocaleDetails: #BotVersionLocaleDetails
	LocaleId: #LocaleId
}

#BotVersionLocaleSpecificationList: [...#BotVersionLocaleSpecification]

#Description: string & strings.MaxRunes(200)

#Id: string & =~"^[0-9a-zA-Z]+$" & strings.MinRunes(10) & strings.MaxRunes(10)

#LocaleId: string
