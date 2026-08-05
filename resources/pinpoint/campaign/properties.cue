package campaign

#Properties: {
	AdditionalTreatments?: [...#WriteTreatmentResource]
	ApplicationId: string
	CampaignHook?: #CampaignHook
	CustomDeliveryConfiguration?: #CustomDeliveryConfiguration
	Description?: string
	HoldoutPercent?: int
	IsPaused?: bool
	Limits?: #Limits
	MessageConfiguration?: #MessageConfiguration
	Name: string
	Priority?: int
	Schedule: #Schedule
	SegmentId: string
	SegmentVersion?: int
	Tags?: {...}
	TemplateConfiguration?: #TemplateConfiguration
	TreatmentDescription?: string
	TreatmentName?: string
}

#CampaignCustomMessage: {
	Data?: string
}

#CampaignEmailMessage: {
	Body?: string
	FromAddress?: string
	HtmlBody?: string
	Title?: string
}

#CampaignEventFilter: {
	Dimensions?: #EventDimensions
	FilterType?: string
}

#CampaignHook: {
	LambdaFunctionName?: string
	Mode?: string
	WebUrl?: string
}

#CampaignInAppMessage: {
	Content?: [...#InAppMessageContent]
	CustomConfig?: {...}
	Layout?: string
}

#CampaignSmsMessage: {
	Body?: string
	EntityId?: string
	MessageType?: string
	OriginationNumber?: string
	SenderId?: string
	TemplateId?: string
}

#CustomDeliveryConfiguration: {
	DeliveryUri?: string
	EndpointTypes?: [...string]
}

#DefaultButtonConfiguration: {
	BackgroundColor?: string
	BorderRadius?: int
	ButtonAction?: string
	Link?: string
	Text?: string
	TextColor?: string
}

#EventDimensions: {
	Attributes?: {...}
	EventType?: #SetDimension
	Metrics?: {...}
}

#InAppMessageBodyConfig: {
	Alignment?: string
	Body?: string
	TextColor?: string
}

#InAppMessageButton: {
	Android?: #OverrideButtonConfiguration
	DefaultConfig?: #DefaultButtonConfiguration
	IOS?: #OverrideButtonConfiguration
	Web?: #OverrideButtonConfiguration
}

#InAppMessageContent: {
	BackgroundColor?: string
	BodyConfig?: #InAppMessageBodyConfig
	HeaderConfig?: #InAppMessageHeaderConfig
	ImageUrl?: string
	PrimaryBtn?: #InAppMessageButton
	SecondaryBtn?: #InAppMessageButton
}

#InAppMessageHeaderConfig: {
	Alignment?: string
	Header?: string
	TextColor?: string
}

#Limits: {
	Daily?: int
	MaximumDuration?: int
	MessagesPerSecond?: int
	Session?: int
	Total?: int
}

#Message: {
	Action?: string
	Body?: string
	ImageIconUrl?: string
	ImageSmallIconUrl?: string
	ImageUrl?: string
	JsonBody?: string
	MediaUrl?: string
	RawContent?: string
	SilentPush?: bool
	TimeToLive?: int
	Title?: string
	Url?: string
}

#MessageConfiguration: {
	ADMMessage?: #Message
	APNSMessage?: #Message
	BaiduMessage?: #Message
	CustomMessage?: #CampaignCustomMessage
	DefaultMessage?: #Message
	EmailMessage?: #CampaignEmailMessage
	GCMMessage?: #Message
	InAppMessage?: #CampaignInAppMessage
	SMSMessage?: #CampaignSmsMessage
}

#OverrideButtonConfiguration: {
	ButtonAction?: string
	Link?: string
}

#QuietTime: {
	End: string
	Start: string
}

#Schedule: {
	EndTime?: string
	EventFilter?: #CampaignEventFilter
	Frequency?: string
	IsLocalTime?: bool
	QuietTime?: #QuietTime
	StartTime?: string
	TimeZone?: string
}

#SetDimension: {
	DimensionType?: string
	Values?: [...string]
}

#Template: {
	Name?: string
	Version?: string
}

#TemplateConfiguration: {
	EmailTemplate?: #Template
	PushTemplate?: #Template
	SMSTemplate?: #Template
	VoiceTemplate?: #Template
}

#WriteTreatmentResource: {
	CustomDeliveryConfiguration?: #CustomDeliveryConfiguration
	MessageConfiguration?: #MessageConfiguration
	Schedule?: #Schedule
	SizePercent?: int
	TemplateConfiguration?: #TemplateConfiguration
	TreatmentDescription?: string
	TreatmentName?: string
}
