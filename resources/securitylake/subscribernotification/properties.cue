package subscribernotification

#Properties: {
	NotificationConfiguration: #NotificationConfiguration
	// The ARN for the subscriber
	SubscriberArn: string & =~"^arn:.*$"
}

#HttpsNotificationConfiguration: {
	// The key name for the notification subscription.
	AuthorizationApiKeyName?: string
	// The key value for the notification subscription.
	AuthorizationApiKeyValue?: string
	// The subscription endpoint in Security Lake.
	Endpoint: string & =~"^https?://.+$"
	// The HTTPS method used for the notification subscription.
	HttpMethod?: "POST" | "PUT"
	// The Amazon Resource Name (ARN) of the EventBridge API destinations IAM role that you created.
	TargetRoleArn: string & =~"^arn:.*$"
}

#NotificationConfiguration: {
	HttpsNotificationConfiguration?: #HttpsNotificationConfiguration
	SqsNotificationConfiguration?: #SqsNotificationConfiguration
}
