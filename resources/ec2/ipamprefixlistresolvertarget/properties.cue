package ipamprefixlistresolvertarget

import "strings"

#Properties: {
	// The desired version of the Prefix List Resolver that this Target should synchronize with.
	DesiredVersion?: int
	// The Id of the IPAM Prefix List Resolver associated with this Target.
	IpamPrefixListResolverId: string
	// The Id of the Managed Prefix List.
	PrefixListId: string
	// The region that the Managed Prefix List is located in.
	PrefixListRegion: string
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// Indicates whether this Target automatically tracks the latest version of the Prefix List Resolver.
	TrackLatestVersion: bool
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
