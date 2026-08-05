package cluster

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The unique Amazon Resource Name (ARN) of the cluster.
	Arn: string
	// The list of endpoints available for interaction with the scheduler.
	Endpoints: [...#Endpoint]
	// The list of errors that occurred during cluster provisioning.
	ErrorInfo: [...#ErrorInfo]
	// The generated unique ID of the cluster.
	Id: string & =~"^(pcs_[a-zA-Z0-9]+|[A-Za-z][A-Za-z0-9-]{1,40})$"
	// The provisioning status of the cluster. The provisioning status doesn't indicate the overall health of the cluster.
	Status: "CREATING" | "ACTIVE" | "UPDATING" | "DELETING" | "CREATE_FAILED" | "DELETE_FAILED" | "UPDATE_FAILED"
}
