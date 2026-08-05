package portal

#Properties: {
	// Contains the configuration information of an alarm created in an AWS IoT SiteWise Monitor portal. You can use the alarm to monitor an asset property and get notified when the asset property value is outside a specified range.
	Alarms?: {
		AlarmRoleArn?: string
		NotificationLambdaArn?: string
	}
	// The email address that sends alarm notifications.
	NotificationSenderEmail?: string
	// The service to use to authenticate users to the portal. Choose from SSO or IAM. You can't change this value after you create a portal.
	PortalAuthMode?: string
	// The AWS administrator's contact email address.
	PortalContactEmail: string
	// A description for the portal.
	PortalDescription?: string
	// A friendly name for the portal.
	PortalName: string
	// The type of portal
	PortalType?: "SITEWISE_PORTAL_V1" | "SITEWISE_PORTAL_V2"
	PortalTypeConfiguration?: #PortalTypeConfiguration
	// The ARN of a service role that allows the portal's users to access your AWS IoT SiteWise resources on your behalf.
	RoleArn: string
	// A list of key-value pairs that contain metadata for the portal.
	Tags?: [...#Tag]
}

#PortalTools: [...string]

#PortalTypeConfiguration: {...}

#PortalTypeEntry: {
	PortalTools: #PortalTools
}

#Tag: {
	Key: string
	Value: string
}
