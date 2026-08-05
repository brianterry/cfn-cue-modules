package globalresolver

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	GlobalResolverId: string & strings.MinRunes(1) & strings.MaxRunes(64)
	DnsName: string & strings.MinRunes(1) & strings.MaxRunes(128)
	IPv4Addresses: [...#IPv4Address]
	IPv6Addresses: [...#IPv6Address]
	CreatedAt: string
	UpdatedAt: string
	Status: #CRResourceStatus
}
