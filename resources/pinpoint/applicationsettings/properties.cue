package applicationsettings

#Properties: {
	ApplicationId: string
	CampaignHook?: #CampaignHook
	CloudWatchMetricsEnabled?: bool
	Limits?: #Limits
	QuietTime?: #QuietTime
}

#CampaignHook: {
	LambdaFunctionName?: string
	Mode?: string
	WebUrl?: string
}

#Limits: {
	Daily?: int
	MaximumDuration?: int
	MessagesPerSecond?: int
	Total?: int
}

#QuietTime: {
	End: string
	Start: string
}
