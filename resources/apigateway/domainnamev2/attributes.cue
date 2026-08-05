package domainnamev2

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	DomainNameId: string
	// The amazon resource name (ARN) of the domain name resource.
	DomainNameArn: string
}
