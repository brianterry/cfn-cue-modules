package notificationchannel

import "strings"

#Properties: {
	Config: #NotificationChannelConfig
}

#NotificationChannelConfig: {
	Filters?: #NotificationFilterConfig
	Sns?: #SnsChannelConfig
}

#NotificationFilterConfig: {
	MessageTypes?: #NotificationMessageTypesFilterList
	Severities?: #InsightSeveritiesFilterList
}

#SnsChannelConfig: {
	TopicArn?: string & =~"^arn:aws[a-z0-9-]*:sns:[a-z0-9-]+:\\d{12}:[^:]+$" & strings.MinRunes(36) & strings.MaxRunes(1024)
}
