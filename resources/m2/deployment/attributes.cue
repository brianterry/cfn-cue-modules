package deployment

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The deployment ID.
	DeploymentId: string & =~"^\\S{1,80}$"
	// The status of the deployment.
	Status: string
}
