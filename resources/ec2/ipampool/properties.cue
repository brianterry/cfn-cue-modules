package ipampool

import "strings"

#Properties: {
	// The address family of the address space in this pool. Either IPv4 or IPv6.
	AddressFamily: string
	// The default netmask length for allocations made from this pool. This value is used when the netmask length of an allocation isn't specified.
	AllocationDefaultNetmaskLength?: int
	// The maximum allowed netmask length for allocations made from this pool.
	AllocationMaxNetmaskLength?: int
	// The minimum allowed netmask length for allocations made from this pool.
	AllocationMinNetmaskLength?: int
	// When specified, an allocation will not be allowed unless a resource has a matching set of tags.
	AllocationResourceTags?: [...#Tag]
	// Determines what to do if IPAM discovers resources that haven't been assigned an allocation. If set to true, an allocation will be made automatically.
	AutoImport?: bool
	// Limits which service in Amazon Web Services that the pool can be used in.
	AwsService?: "ec2" | "global-services"
	Description?: string
	// The Id of the scope this pool is a part of.
	IpamScopeId: string
	// The region of this pool. If not set, this will default to "None" which will disable non-custom allocations. If the locale has been specified for the source pool, this value must match.
	Locale?: string
	// A list of cidrs representing the address space available for allocation in this pool.
	ProvisionedCidrs?: [...#ProvisionedCidr]
	// The IP address source for pools in the public scope. Only used for provisioning IP address CIDRs to pools in the public scope. Default is `byoip`.
	PublicIpSource?: "byoip" | "amazon"
	// Determines whether or not address space from this pool is publicly advertised. Must be set if and only if the pool is IPv6.
	PubliclyAdvertisable?: bool
	// The Id of this pool's source. If set, all space provisioned in this pool must be free space provisioned in the parent pool.
	SourceIpamPoolId?: string
	SourceResource?: #SourceResource
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#Cidr: string

#ProvisionedCidr: {
	Cidr: #Cidr
}

#SourceResource: {
	ResourceId: string
	ResourceOwner: string
	ResourceRegion: string
	ResourceType: string
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
