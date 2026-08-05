package pricingrule

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Pricing rule ARN
	Arn: string & =~"arn:aws(-cn)?:billingconductor::[0-9]{12}:pricingrule/[a-zA-Z0-9]{10}"
	// The number of pricing plans associated with pricing rule
	AssociatedPricingPlanCount: int & >=0
	// Creation timestamp in UNIX epoch time format
	CreationTime: int
	// Latest modified timestamp in UNIX epoch time format
	LastModifiedTime: int
}
