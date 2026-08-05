package canary

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Id of the canary
	Id: string
	// State of the canary
	State: string
	// Provide the canary script source
	Code: #Code
	// List of replica locations for multi-location canary execution
	Replicas: [...#Replica]
}
