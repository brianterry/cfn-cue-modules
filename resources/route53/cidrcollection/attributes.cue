package cidrcollection

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// UUID of the CIDR collection.
	Id: string
	// The Amazon resource name (ARN) to uniquely identify the AWS resource.
	Arn: string
}
