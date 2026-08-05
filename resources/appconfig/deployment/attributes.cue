package deployment

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The sequence number of the deployment.
	DeploymentNumber: string
	// The state of the deployment.
	State: "BAKING" | "VALIDATING" | "DEPLOYING" | "COMPLETE" | "ROLLING_BACK" | "ROLLED_BACK" | "REVERTED"
}
