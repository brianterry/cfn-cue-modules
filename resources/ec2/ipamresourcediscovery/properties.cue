package ipamresourcediscovery

import "strings"

#Properties: {
	Description?: string
	// The regions Resource Discovery is enabled for. Allows resource discoveries to be created in these regions, as well as enabling monitoring
	OperatingRegions?: [...#IpamOperatingRegion]
	// A set of organizational unit (OU) exclusions for this resource.
	OrganizationalUnitExclusions?: [...#IpamResourceDiscoveryOrganizationalUnitExclusion]
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#IpamOperatingRegion: {
	// The name of the region.
	RegionName: string
}

#IpamResourceDiscoveryOrganizationalUnitExclusion: {
	// An AWS Organizations entity path. Build the path for the OU(s) using AWS Organizations IDs separated by a '/'. Include all child OUs by ending the path with '/*'.
	OrganizationsEntityPath: string & strings.MinRunes(1)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
