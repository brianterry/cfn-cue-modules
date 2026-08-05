package resolverruleassociation

#Properties: {
	// The name of an association between a Resolver rule and a VPC.
	// The name can be up to 64 characters long and can contain letters (a-z, A-Z), numbers (0-9), hyphens (-), underscores (_), and spaces. The name cannot consist of only numbers.
	Name?: string
	// The ID of the Resolver rule that you associated with the VPC that is specified by ``VPCId``.
	ResolverRuleId: string
	// The ID of the VPC that you associated the Resolver rule with.
	VPCId: string
}
