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

#AnswerMachineDetectionConfig: {
	// Enables detection of prompts (e.g., beep after after a voicemail greeting)
	AwaitAnswerMachinePrompt?: bool
	// Flag to decided whether outbound calls should have answering machine detection enabled or not
	EnableAnswerMachineDetection: bool
}

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

#DailyHour: {
	Key?: #DayOfWeek
	Value?: #TimeRangeList
}

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

#LocalTimeZoneConfig: {
	DefaultTimeZone?: #TimeZone
	LocalTimeZoneDetection?: #LocalTimeZoneDetection
	LocalTimeZoneDetectionScope?: #LocalTimeZoneDetectionScope
}

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

#RestrictedPeriod: {
	EndDate: #Iso8601Date
	// The name of a restricted period
	Name?: string & strings.MaxRunes(127)
	StartDate: #Iso8601Date
}

#RestrictedPeriods: {
	RestrictedPeriodList?: #RestrictedPeriodList
}

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

#TimeWindow: {
	OpenHours: #OpenHours
	RestrictedPeriods?: #RestrictedPeriods
}

#TimeoutConfig: {
	DurationInSeconds?: #TimeoutDuration
}

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
