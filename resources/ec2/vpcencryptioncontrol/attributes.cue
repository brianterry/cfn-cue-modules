package vpcencryptioncontrol

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The VPC encryption control resource id.
	VpcEncryptionControlId: string
	// The current state of the VPC encryption control.
	State: "creating" | "available" | "monitor-in-progress" | "enforce-in-progress" | "monitor-failed" | "enforce-failed" | "deleting" | "deleted" | "delete-failed"
	// Provides additional context on the state of the VPC encryption control.
	StateMessage: string
	// Enumerates the states of all the VPC encryption control resource exclusions
	ResourceExclusions: #ResourceExclusions
}
