package repository

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	CloneUrlHttp: string
	Id: string
	Name: string
	CloneUrlSsh: string
	Arn: string
}
