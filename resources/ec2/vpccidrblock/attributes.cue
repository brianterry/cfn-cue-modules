package vpccidrblock

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Id of the VPC associated CIDR Block.
	Id: string
	// The value denoting whether an IPv6 VPC CIDR Block is public or private.
	Ipv6AddressAttribute: string
	// The IP Source of an IPv6 VPC CIDR Block.
	IpSource: string
}
