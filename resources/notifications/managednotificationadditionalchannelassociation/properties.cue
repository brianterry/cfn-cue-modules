package managednotificationadditionalchannelassociation

#Properties: {
	// ARN identifier of the channel.
	// Example: arn:aws:chatbot::123456789012:chat-configuration/slack-channel/security-ops
	ChannelArn: string & =~"^arn:[a-z-]{3,10}:(chatbot|consoleapp|notifications-contacts):[a-zA-Z0-9-]*:[0-9]{12}:[a-zA-Z0-9-_.@]+/[a-zA-Z0-9/_.@:-]+$"
	// ARN identifier of the Managed Notification.
	// Example: arn:aws:notifications::381491923782:managed-notification-configuration/category/AWS-Health/sub-category/Billing
	ManagedNotificationConfigurationArn: string & =~"^arn:[a-z-]{3,10}:notifications::([0-9]{12}|):managed-notification-configuration/category/[a-zA-Z0-9\\-]{3,64}/sub-category/[a-zA-Z0-9\\-]{3,64}$"
}
