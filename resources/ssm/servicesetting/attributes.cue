package servicesetting

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The status of the service setting. The value can be Default, Customized or PendingUpdate.
	Status: string
	// The last time the service setting was modified.
	LastModifiedDate: string
	// The ARN of the last modified user.
	LastModifiedUser: string
	// The ARN of the service setting.
	Arn: string
}
