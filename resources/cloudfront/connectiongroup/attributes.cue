package connectiongroup

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Id: string
	Arn: string
	CreatedTime: string
	LastModifiedTime: string
	RoutingEndpoint: string
	Status: string
	IsDefault: bool
	ETag: string
}
