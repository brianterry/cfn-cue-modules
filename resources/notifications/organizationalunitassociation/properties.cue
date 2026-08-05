package organizationalunitassociation

#Properties: {
	// ARN identifier of the NotificationConfiguration.
	// Example: arn:aws:notifications::123456789012:configuration/a01jes88qxwkbj05xv9c967pgm1
	NotificationConfigurationArn: string & =~"^arn:[a-z-]{3,10}:notifications::[0-9]{12}:configuration/[a-z0-9]{27}$"
	// The ID of the organizational unit.
	OrganizationalUnitId: string & =~"^(r-[0-9a-z]{4,32})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$"
}
