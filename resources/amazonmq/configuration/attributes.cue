package configuration

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the Amazon MQ configuration.
	Arn: string
	// The ID of the Amazon MQ configuration.
	Id: string
	// The revision number of the configuration.
	Revision: string
}
