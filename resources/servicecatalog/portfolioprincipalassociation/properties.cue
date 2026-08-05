package portfolioprincipalassociation

#Properties: {
	// The language code.
	AcceptLanguage?: string
	// The portfolio identifier.
	PortfolioId?: string
	// The ARN of the principal (user, role, or group).
	PrincipalARN?: string & =~"arn:(aws|aws-cn|aws-us-gov):iam::[0-9]*:(role|user|group)\\/.*"
	// The principal type. The supported value is IAM if you use a fully defined Amazon Resource Name (ARN), or IAM_PATTERN if you use an ARN with no accountID, with or without wildcard characters.
	PrincipalType: string
}
