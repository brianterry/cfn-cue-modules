package connectionfunction

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Id: string
	ConnectionFunctionArn: string
	Stage: "DEVELOPMENT" | "LIVE"
	Status: "UNPUBLISHED" | "DEPLOYED" | "UNASSOCIATED" | "PUBLISHING" | "IN_PROGRESS"
	ETag: string
	CreatedTime: string
	LastModifiedTime: string
}
