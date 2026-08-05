package subnetgroup

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the subnet group.
	ARN: string
	// Supported network types would be a list of network types supported by subnet group and can be either [ipv4] or [ipv4, dual_stack] or [ipv6].
	SupportedNetworkTypes: [...string]
}
