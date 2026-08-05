package vpcblockpublicaccessoptions

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The identifier for the specified AWS account.
	AccountId: string
	// Determines if exclusions are allowed. If you have enabled VPC BPA at the Organization level, exclusions may be not-allowed. Otherwise, they are allowed.
	ExclusionsAllowed: string
}
