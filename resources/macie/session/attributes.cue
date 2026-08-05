package session

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// AWS account ID of customer
	AwsAccountId: string
	// Service role used by Macie
	ServiceRole: string
	// The status of automated sensitive data discovery for the Macie session.
	AutomatedDiscoveryStatus: "ENABLED" | "DISABLED"
}
