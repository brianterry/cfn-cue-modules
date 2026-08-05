package launchroleconstraint

#Properties: {
	// The language code for the constraint.
	AcceptLanguage?: string
	// The description of the launch role constraint.
	Description?: string
	// The local IAM role name to use in the launch constraint.
	LocalRoleName?: string
	// The ID of the portfolio to which this launch role constraint applies.
	PortfolioId: string
	// The ID of the product to which this launch role constraint applies.
	ProductId: string
	// The ARN of the IAM role used for the launch constraint.
	RoleArn?: string & =~"arn:(aws|aws-cn|aws-us-gov):iam::[0-9]*:(role)\\/.*"
}
