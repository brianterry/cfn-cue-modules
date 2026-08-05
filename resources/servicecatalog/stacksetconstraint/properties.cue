package stacksetconstraint

#Properties: {
	// The language code.
	AcceptLanguage?: string
	// One or more AWS accounts that will have access to the provisioned product.
	AccountList: [...string]
	// AdminRole ARN.
	AdminRole: string
	// The description of the constraint.
	Description: string
	// ExecutionRole name.
	ExecutionRole: string
	// The portfolio identifier.
	PortfolioId: string
	// The product identifier.
	ProductId: string
	// One or more AWS Regions where the provisioned product will be available.
	RegionList: [...string]
	// Permission to create, update, and delete stack instances. Choose from ALLOWED and NOT_ALLOWED.
	StackInstanceControl: string
}
