package subnetcidrblock

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Information about the IPv6 association.
	Id: string
	// The value denoting whether an IPv6 Subnet CIDR Block is public or private.
	Ipv6AddressAttribute: string
	// The IP Source of an IPv6 Subnet CIDR Block.
	IpSource: string
}
