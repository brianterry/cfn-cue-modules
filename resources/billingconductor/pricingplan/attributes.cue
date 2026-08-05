package pricingplan

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Pricing Plan ARN
	Arn: string & =~"arn:aws(-cn)?:billingconductor::(aws|[0-9]{12}):pricingplan/(BasicPricingPlan|Passthrough|[a-zA-Z0-9]{10})"
	// Number of associated pricing rules
	Size: int
	// Creation timestamp in UNIX epoch time format
	CreationTime: int
	// Latest modified timestamp in UNIX epoch time format
	LastModifiedTime: int
}
