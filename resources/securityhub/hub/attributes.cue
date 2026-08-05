package hub

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// An ARN is automatically created for the customer.
	ARN: string & =~"^arn:.*"
	// The date and time when Security Hub was enabled in the account.
	SubscribedAt: string
}
