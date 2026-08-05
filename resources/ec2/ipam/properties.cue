package ipam

import "strings"

#Properties: {
	// A set of organizational unit (OU) exclusions for the default resource discovery, created with this IPAM.
	DefaultResourceDiscoveryOrganizationalUnitExclusions?: [...#IpamOrganizationalUnitExclusion]
	Description?: string
	// Enable provisioning of GUA space in private pools.
	EnablePrivateGua?: bool
	// A metered account is an account that is charged for active IP addresses managed in IPAM
	MeteredAccount?: "ipam-owner" | "resource-owner"
	// The regions IPAM is enabled for. Allows pools to be created in these regions, as well as enabling monitoring
	OperatingRegions?: [...#IpamOperatingRegion]
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// The tier of the IPAM.
	Tier?: "free" | "advanced"
}

#IpamOperatingRegion: {
	// The name of the region.
	RegionName: string
}

#IpamOrganizationalUnitExclusion: {
	// An AWS Organizations entity path. Build the path for the OU(s) using AWS Organizations IDs separated by a '/'. Include all child OUs by ending the path with '/*'.
	OrganizationsEntityPath: string & strings.MinRunes(1)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
