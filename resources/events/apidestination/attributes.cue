package apidestination

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The arn of the api destination.
	Arn: string & =~"^arn:aws([a-z]|\\-)*:events:([a-z]|\\d|\\-)*:([0-9]{12})?:api-destination/[\\.\\-_A-Za-z0-9]+/[\\-A-Za-z0-9]+$"
	// The arn of the api destination to be used in IAM policies.
	ArnForPolicy: string & =~"^arn:aws([a-z]|\\-)*:events:([a-z]|\\d|\\-)*:([0-9]{12})?:api-destination/[\\.\\-_A-Za-z0-9]+$"
}
