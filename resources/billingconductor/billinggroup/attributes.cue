package billinggroup

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Billing Group ARN
	Arn: string & =~"arn:aws(-cn)?:billingconductor::[0-9]{12}:billinggroup/?[a-zA-Z0-9]{10,12}"
	// Number of accounts in the billing group
	Size: int
	Status: #BillingGroupStatus
	StatusReason: string
	// Creation timestamp in UNIX epoch time format
	CreationTime: int
	// Latest modified timestamp in UNIX epoch time format
	LastModifiedTime: int
}
