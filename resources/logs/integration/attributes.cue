package integration

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Status of creation for the Integration and its resources
	IntegrationStatus: "PROVISIONING" | "ACTIVE" | "FAILED"
}
