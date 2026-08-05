package notificationchannel

import "strings"

#Properties: {
	Config: #NotificationChannelConfig
}

#InsightSeveritiesFilterList: [...#InsightSeverity]

#InsightSeverity: "LOW" | "MEDIUM" | "HIGH"

#NotificationChannelConfig: {
	Filters?: #NotificationFilterConfig
	Sns?: #SnsChannelConfig
}

#NotificationFilterConfig: {
	MessageTypes?: #NotificationMessageTypesFilterList
	Severities?: #InsightSeveritiesFilterList
}

#NotificationMessageType: "NEW_INSIGHT" | "CLOSED_INSIGHT" | "NEW_ASSOCIATION" | "SEVERITY_UPGRADED" | "NEW_RECOMMENDATION"

#NotificationMessageTypesFilterList: [...#NotificationMessageType]

#SnsChannelConfig: {
	TopicArn?: string & =~"^arn:aws[a-z0-9-]*:sns:[a-z0-9-]+:\\d{12}:[^:]+$" & strings.MinRunes(36) & strings.MaxRunes(1024)
}
