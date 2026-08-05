package permission

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string
	// Version of the permission.
	Version: string
	// Set to true to use this as the default permission.
	IsResourceTypeDefault: bool
	PermissionType: string
}
