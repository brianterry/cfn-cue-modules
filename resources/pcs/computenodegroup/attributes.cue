package computenodegroup

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The unique Amazon Resource Name (ARN) of the compute node group.
	Arn: string
	// The list of errors that occurred during compute node group provisioning.
	ErrorInfo: [...#ErrorInfo]
	// The generated unique ID of the compute node group.
	Id: string
	// The provisioning status of the compute node group. The provisioning status doesn't indicate the overall health of the compute node group.
	Status: "CREATING" | "ACTIVE" | "UPDATING" | "DELETING" | "CREATE_FAILED" | "DELETE_FAILED" | "UPDATE_FAILED"
}
