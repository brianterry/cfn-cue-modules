package service

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The unique identifier for the service.
	Id: string
	// The Amazon Resource Name (ARN) of the service.
	Arn: string & =~"^arn:[a-zA-Z0-9-]+:servicediscovery:[a-zA-Z0-9-]+:[0-9]{12}:(service|service/[a-zA-Z0-9-_]+|service:[a-zA-Z0-9-_]+)$"
}
