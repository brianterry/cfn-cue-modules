package instance

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// An instanceId is automatically generated on creation and assigned as the unique identifier.
	Id: string
	// An instanceArn is automatically generated on creation based on instanceId.
	Arn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*$"
	// Service linked role created as part of instance creation.
	ServiceRole: string
	// Timestamp of instance creation logged as part of instance creation.
	CreatedTime: string
	// Specifies the creation status of new instance.
	InstanceStatus: "CREATION_IN_PROGRESS" | "CREATION_FAILED" | "ACTIVE"
}
