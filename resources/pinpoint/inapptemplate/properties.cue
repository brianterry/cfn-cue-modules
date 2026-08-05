package inapptemplate

#Properties: {
	Content?: [...#InAppMessageContent]
	CustomConfig?: {...}
	Layout?: "BOTTOM_BANNER" | "TOP_BANNER" | "OVERLAYS" | "MOBILE_FEED" | "MIDDLE_BANNER" | "CAROUSEL"
	Tags?: {...}
	TemplateDescription?: string
	TemplateName: string
}

#BodyConfig: {
	Alignment?: #Alignment
	Body?: string
	TextColor?: string
}

#ButtonConfig: {
	Android?: #OverrideButtonConfiguration
	DefaultConfig?: #DefaultButtonConfiguration
	IOS?: #OverrideButtonConfiguration
	Web?: #OverrideButtonConfiguration
}

#DefaultButtonConfiguration: {
	BackgroundColor?: string
	BorderRadius?: int
	ButtonAction?: #ButtonAction
	Link?: string
	Text?: string
	TextColor?: string
}

#HeaderConfig: {
	Alignment?: #Alignment
	Header?: string
	TextColor?: string
}

#InAppMessageContent: {
	BackgroundColor?: string
	BodyConfig?: #BodyConfig
	HeaderConfig?: #HeaderConfig
	ImageUrl?: string
	PrimaryBtn?: #ButtonConfig
	SecondaryBtn?: #ButtonConfig
}

#OverrideButtonConfiguration: {
	ButtonAction?: #ButtonAction
	Link?: string
}
