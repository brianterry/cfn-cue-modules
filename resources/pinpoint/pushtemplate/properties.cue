package pushtemplate

#Properties: {
	ADM?: #AndroidPushNotificationTemplate
	APNS?: #APNSPushNotificationTemplate
	Baidu?: #AndroidPushNotificationTemplate
	Default?: #DefaultPushNotificationTemplate
	DefaultSubstitutions?: string
	GCM?: #AndroidPushNotificationTemplate
	Tags?: {...}
	TemplateDescription?: string
	TemplateName: string
}

#APNSPushNotificationTemplate: {
	Action?: string
	Body?: string
	MediaUrl?: string
	Sound?: string
	Title?: string
	Url?: string
}

#AndroidPushNotificationTemplate: {
	Action?: string
	Body?: string
	ImageIconUrl?: string
	ImageUrl?: string
	SmallImageIconUrl?: string
	Sound?: string
	Title?: string
	Url?: string
}

#DefaultPushNotificationTemplate: {
	Action?: string
	Body?: string
	Sound?: string
	Title?: string
	Url?: string
}
