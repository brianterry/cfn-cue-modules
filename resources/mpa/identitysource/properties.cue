package identitysource

#Properties: {
	Tags?: #Tags
}

#IamIdentityCenter: {
	ApprovalPortalUrl?: string
	InstanceArn: string & =~"^arn:.+:sso:::instance/(?:sso)?ins-[a-zA-Z0-9-.]{16}$"
	Region: string
}

#IdentitySourceParameters: {
	IamIdentityCenter: #IamIdentityCenter
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string
}
