package workgroup

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The date and time the workgroup was created.
	CreationTime: string
	// The workgroup configuration
	WorkGroupConfiguration: #WorkGroupConfiguration
	// The workgroup configuration update object
	WorkGroupConfigurationUpdates: #WorkGroupConfigurationUpdates
}
