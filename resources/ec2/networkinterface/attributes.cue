package networkinterface

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Network interface id.
	Id: string
	// Returns the secondary private IP addresses of the network interface.
	SecondaryPrivateIpAddresses: [...string]
	// Returns the primary private IP address of the network interface.
	PrimaryPrivateIpAddress: string
	// The primary IPv6 address
	PrimaryIpv6Address: string
	// The ID of the VPC
	VpcId: string
	PublicIpDnsNameOptions: #PublicIpDnsNameOptions
}
