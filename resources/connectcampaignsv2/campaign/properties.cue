package campaign

import "strings"

#Properties: {
	ChannelSubtypeConfig?: #ChannelSubtypeConfig
	CommunicationLimitsOverride?: #CommunicationLimitsConfig
	CommunicationTimeConfig?: #CommunicationTimeConfig
	ConnectCampaignFlowArn?: #Arn
	ConnectInstanceId: #InstanceId
	EntryLimitsConfig?: #EntryLimitsConfig
	Name: #CampaignName
	Schedule?: #Schedule
	Source?: #Source
	// One or more tags.
	Tags?: [...#Tag]
	Type?: #CampaignType
}

#AgentAction: "DISCARD"

#AgentActions: [...#AgentAction]

#AgentlessConfig: {...}

#AnswerMachineDetectionConfig: {
	// Enables detection of prompts (e.g., beep after after a voicemail greeting)
	AwaitAnswerMachinePrompt?: bool
	// Flag to decided whether outbound calls should have answering machine detection enabled or not
	EnableAnswerMachineDetection: bool
}

#Arn: string & =~"^arn:.*$" & strings.MinRunes(20) & strings.MaxRunes(500)

#BandwidthAllocation: number & >=0 & <=1

#CampaignName: string & strings.MinRunes(1) & strings.MaxRunes(127)

#CampaignType: "MANAGED" | "JOURNEY"

#Capacity: number & >=0.01 & <=1

#ChannelSubtypeConfig: {
	Email?: #EmailChannelSubtypeConfig
	Sms?: #SmsChannelSubtypeConfig
	Telephony?: #TelephonyChannelSubtypeConfig
	WhatsApp?: #WhatsAppChannelSubtypeConfig
}

#CommunicationLimit: {
	Frequency: int & >=1
	MaxCountPerRecipient: int & >=1
	Unit: #CommunicationLimitTimeUnit
}

#CommunicationLimitList: [...#CommunicationLimit]

#CommunicationLimitTimeUnit: "DAY"

#CommunicationLimits: {
	CommunicationLimitList?: #CommunicationLimitList
}

#CommunicationLimitsConfig: {
	AllChannelsSubtypes?: #CommunicationLimits
	InstanceLimitsHandling?: #InstanceLimitsHandling
}

#CommunicationTimeConfig: {
	Email?: #TimeWindow
	LocalTimeZoneConfig: #LocalTimeZoneConfig
	Sms?: #TimeWindow
	Telephony?: #TimeWindow
	WhatsApp?: #TimeWindow
}

#ContactFlowId: string & strings.MaxRunes(500)

#DailyHour: {
	Key?: #DayOfWeek
	Value?: #TimeRangeList
}

#DailyHours: [...#DailyHour]

#DayOfWeek: "MONDAY" | "TUESDAY" | "WEDNESDAY" | "THURSDAY" | "FRIDAY" | "SATURDAY" | "SUNDAY"

#EmailAddress: string & =~"^[\\w-\\.\\+]+@([\\w-]+\\.)+[\\w-]{2,4}$" & strings.MinRunes(1) & strings.MaxRunes(255)

#EmailChannelSubtypeConfig: {
	Capacity?: #Capacity
	DefaultOutboundConfig: #EmailOutboundConfig
	OutboundMode: #EmailOutboundMode
}

#EmailOutboundConfig: {
	ConnectSourceEmailAddress: #EmailAddress
	SourceEmailAddressDisplayName?: #SourceEmailAddressDisplayName
	WisdomTemplateArn: #Arn
}

#EmailOutboundMode: {
	AgentlessConfig?: #AgentlessConfig
}

#EntryLimitsConfig: {
	// Maximum number of entries per participant. 0 indicates unlimited entries.
	MaxEntryCount: int & >=0
	// Minimum time interval between entries for the same participant in ISO 8601 duration format
	MinEntryInterval: #Iso8601Duration
}

#EventTrigger: {
	CustomerProfilesDomainArn?: #Arn
}

#InstanceId: string & =~"^[a-zA-Z0-9_\\-.]*$" & strings.MinRunes(0) & strings.MaxRunes(256)

#InstanceLimitsHandling: "OPT_IN" | "OPT_OUT"

#Iso8601Date: string & =~"^\\d{4}-\\d{2}-\\d{2}$"

#Iso8601Duration: string & =~"^P(?:([-+]?[0-9]+)D)?(T(?:([-+]?[0-9]+)H)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)(?:[.,]([0-9]{0,9}))?S)?)?$" & strings.MinRunes(0) & strings.MaxRunes(50)

#Iso8601Time: string & =~"^T\\d{2}:\\d{2}$"

#LocalTimeZoneConfig: {
	DefaultTimeZone?: #TimeZone
	LocalTimeZoneDetection?: #LocalTimeZoneDetection
	LocalTimeZoneDetectionScope?: #LocalTimeZoneDetectionScope
}

#LocalTimeZoneDetection: [...#LocalTimeZoneDetectionType]

#LocalTimeZoneDetectionScope: "PRIMARY_ONLY" | "ALL_AVAILABLE"

#LocalTimeZoneDetectionType: "ZIP_CODE" | "AREA_CODE"

#OpenHours: {
	DailyHours: #DailyHours
}

#PredictiveConfig: {
	BandwidthAllocation: #BandwidthAllocation
}

#PreviewConfig: {
	AgentActions?: #AgentActions
	BandwidthAllocation: #BandwidthAllocation
	TimeoutConfig: #TimeoutConfig
}

#ProgressiveConfig: {
	BandwidthAllocation: #BandwidthAllocation
}

#QueueId: string & strings.MaxRunes(500)

#RestrictedPeriod: {
	EndDate: #Iso8601Date
	// The name of a restricted period
	Name?: string & strings.MaxRunes(127)
	StartDate: #Iso8601Date
}

#RestrictedPeriodList: [...#RestrictedPeriod]

#RestrictedPeriods: {
	RestrictedPeriodList?: #RestrictedPeriodList
}

#RingTimeout: int & >=15 & <=60

#Schedule: {
	EndTime: #TimeStamp
	RefreshFrequency?: #Iso8601Duration
	StartTime: #TimeStamp
}

#SmsChannelSubtypeConfig: {
	Capacity?: #Capacity
	DefaultOutboundConfig: #SmsOutboundConfig
	OutboundMode: #SmsOutboundMode
}

#SmsOutboundConfig: {
	ConnectSourcePhoneNumberArn: #Arn
	WisdomTemplateArn: #Arn
}

#SmsOutboundMode: {
	AgentlessConfig?: #AgentlessConfig
}

#Source: {
	CustomerProfilesSegmentArn?: #Arn
	EventTrigger?: #EventTrigger
}

#SourceEmailAddressDisplayName: string & strings.MinRunes(0) & strings.MaxRunes(256)

#SourcePhoneNumber: string & strings.MaxRunes(100)

#Tag: {
	// The key name of the tag.
	Key: string
	// The value for the tag.
	Value: string
}

#TelephonyChannelSubtypeConfig: {
	Capacity?: #Capacity
	ConnectQueueId?: #QueueId
	DefaultOutboundConfig: #TelephonyOutboundConfig
	OutboundMode: #TelephonyOutboundMode
}

#TelephonyOutboundConfig: {
	AnswerMachineDetectionConfig?: #AnswerMachineDetectionConfig
	ConnectContactFlowId: #ContactFlowId
	ConnectSourcePhoneNumber?: #SourcePhoneNumber
	RingTimeout?: #RingTimeout
}

#TelephonyOutboundMode: {
	AgentlessConfig?: #AgentlessConfig
	PredictiveConfig?: #PredictiveConfig
	PreviewConfig?: #PreviewConfig
	ProgressiveConfig?: #ProgressiveConfig
}

#TimeRange: {
	EndTime: #Iso8601Time
	StartTime: #Iso8601Time
}

#TimeRangeList: [...#TimeRange]

#TimeStamp: string & strings.MaxRunes(100)

#TimeWindow: {
	OpenHours: #OpenHours
	RestrictedPeriods?: #RestrictedPeriods
}

#TimeZone: string

#TimeoutConfig: {
	DurationInSeconds?: #TimeoutDuration
}

#TimeoutDuration: int & >=1 & <=300

#WhatsAppChannelSubtypeConfig: {
	Capacity?: #Capacity
	DefaultOutboundConfig: #WhatsAppOutboundConfig
	OutboundMode: #WhatsAppOutboundMode
}

#WhatsAppOutboundConfig: {
	ConnectSourcePhoneNumberArn: #Arn
	WisdomTemplateArn: #Arn
}

#WhatsAppOutboundMode: {
	AgentlessConfig?: #AgentlessConfig
}
