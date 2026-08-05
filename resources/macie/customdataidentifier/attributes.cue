package customdataidentifier

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Custom data identifier ID.
	Id: string
	// Custom data identifier ARN.
	Arn: string
}
