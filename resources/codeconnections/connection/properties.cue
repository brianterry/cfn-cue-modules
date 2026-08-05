package connection

import "strings"

#Properties: {
	// The name of the connection. Connection names must be unique in an AWS user account.
	ConnectionName: string & strings.MinRunes(1) & strings.MaxRunes(32)
	// The host arn configured to represent the infrastructure where your third-party provider is installed. You must specify either a ProviderType or a HostArn.
	HostArn?: string & =~"arn:aws(-[\\w]+)*:.+:.+:[0-9]{12}:.+" & strings.MinRunes(0) & strings.MaxRunes(256)
	// The name of the external provider where your third-party code repository is configured. You must specify either a ProviderType or a HostArn.
	ProviderType?: string
	// Specifies the tags applied to a connection.
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
