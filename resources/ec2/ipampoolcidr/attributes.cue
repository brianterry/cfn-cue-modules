package ipampoolcidr

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Id of the IPAM Pool Cidr.
	IpamPoolCidrId: string
	// Provisioned state of the cidr.
	State: string
}
