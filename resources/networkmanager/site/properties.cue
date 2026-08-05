package site

#Properties: {
	// The description of the site.
	Description?: string
	// The ID of the global network.
	GlobalNetworkId: string
	// The location of the site.
	Location?: #Location
	// The tags for the site.
	Tags?: [...#Tag]
}

#Location: {
	// The physical address.
	Address?: string
	// The latitude.
	Latitude?: string
	// The longitude.
	Longitude?: string
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string
}
