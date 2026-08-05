package managednotificationaccountcontactassociation

#Properties: {
	ContactIdentifier: #ContactIdentifier
	ManagedNotificationConfigurationArn: #ManagedNotificationConfigurationArn
}

#ContactIdentifier: "ACCOUNT_PRIMARY" | "ACCOUNT_ALTERNATE_SECURITY" | "ACCOUNT_ALTERNATE_OPERATIONS" | "ACCOUNT_ALTERNATE_BILLING"

#ManagedNotificationConfigurationArn: string & =~"^arn:[a-z-]{3,10}:notifications::([0-9]{12}|):managed-notification-configuration/category/[a-zA-Z0-9\\-]{3,64}/sub-category/[a-zA-Z0-9\\-]{3,64}$"
