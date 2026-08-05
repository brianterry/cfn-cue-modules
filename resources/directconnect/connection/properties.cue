package connection

import "strings"

#Properties: {
	// The bandwidth of the connection.
	Bandwidth: string & =~"^[1-9][0-9]*(M|G)bps$"
	// The name of the connection.
	ConnectionName: string & =~"^[\\w \\-_,\\/]{1,200}$"
	// The ID or ARN of the LAG to associate the connection with.
	LagId?: string | string
	// The location of the connection.
	Location: string & =~"^[a-zA-Z0-9-]+$"
	// The name of the service provider associated with the requested connection.
	ProviderName?: string
	// Indicates whether you want the connection to support MAC Security (MACsec).
	RequestMACSec?: bool
	// The tags associated with the connection.
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
