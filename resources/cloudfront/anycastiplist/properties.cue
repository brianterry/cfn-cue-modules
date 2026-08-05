package anycastiplist

import "strings"

#Properties: {
	// The IP address type for the Anycast static IP list.
	IpAddressType?: #IpAddressType
	// The number of IP addresses in the Anycast static IP list.
	IpCount: int
	// A list of IPAM CIDR configurations that define the IP address ranges, IPAM pools, and associated Anycast IP addresses.
	IpamCidrConfigs?: #IpamCidrConfigs
	// The name of the Anycast static IP list.
	Name: string & =~"^[a-zA-Z0-9-_]{1,64}$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// A complex type that contains zero or more ``Tag`` elements.
	Tags?: #Tags
}

#AnycastIpList: {
	// The static IP addresses that are allocated to the Anycast static IP list.
	AnycastIps: [...string]
	// The Amazon Resource Name (ARN) of the Anycast static IP list.
	Arn: string
	// The ID of the Anycast static IP list.
	Id: string
	// The IP address type for the Anycast static IP list.
	IpAddressType?: #IpAddressType
	// The number of IP addresses in the Anycast static IP list.
	IpCount: int
	// The results for the IPAM CIDRs that defines a specific IP address range, IPAM pool, and associated Anycast IP address.
	IpamCidrConfigResults?: #IpamCidrConfigResults
	// The last time the Anycast static IP list was modified.
	LastModifiedTime: string
	// The name of the Anycast static IP list.
	Name: string & =~"^[a-zA-Z0-9-_]{1,64}$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// The status of the Anycast static IP list. Valid values: ``Deployed``, ``Deploying``, or ``Failed``.
	Status: string
}

#IpamCidrConfig: {
	// The CIDR that specifies the IP address range for this IPAM configuration.
	Cidr: string
	// The Amazon Resource Name (ARN) of the IPAM pool that the CIDR block is assigned to.
	IpamPoolArn: string
}

#IpamCidrConfigResult: {
	// The specified Anycast IP address allocated from the IPAM pool for this CIDR configuration.
	AnycastIp?: string
	// The CIDR that specifies the IP address range for this IPAM configuration.
	Cidr?: string
	// The Amazon Resource Name (ARN) of the IPAM pool that the CIDR block is assigned to.
	IpamPoolArn?: string
	// The current status of the IPAM CIDR configuration.
	Status?: string
}

#Tag: {
	// A string that contains ``Tag`` key.
 The string length should be between 1 and 128 characters. Valid characters include ``a-z``, ``A-Z``, ``0-9``, space, and the special characters ``_ - . : / = + @``.
	Key: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// A string that contains an optional ``Tag`` value.
 The string length should be between 0 and 256 characters. Valid characters include ``a-z``, ``A-Z``, ``0-9``, space, and the special characters ``_ - . : / = + @``.
	Value?: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(0) & strings.MaxRunes(256)
}

#Tags: {
	// A complex type that contains ``Tag`` elements.
	Items?: [...#Tag]
}
