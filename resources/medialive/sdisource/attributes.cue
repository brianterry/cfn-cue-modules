package sdisource

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The unique identifier of the SdiSource.
	Id: string
	State: #SdiSourceState
	// The unique arn of the SdiSource.
	Arn: string
	// The list of inputs currently using this SDI source.
	Inputs: [...string]
}
