package securitygroup

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The group name or group ID depending on whether the SG is created in default or specific VPC
	Id: string
	// The group ID of the specified security group.
	GroupId: string
}
