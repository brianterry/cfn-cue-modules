package accelerator

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the accelerator.
	AcceleratorArn: string
	// The Domain Name System (DNS) name that Global Accelerator creates that points to your accelerator's static IPv4 addresses.
	DnsName: string
	// The IPv4 addresses assigned to the accelerator.
	Ipv4Addresses: [...string]
	// The IPv6 addresses assigned if the accelerator is dualstack
	Ipv6Addresses: [...string]
	// The Domain Name System (DNS) name that Global Accelerator creates that points to your accelerator's static IPv4 and IPv6 addresses.
	DualStackDnsName: string
}
