package ipamscope

import "strings"

#Properties: {
	Description?: string
	ExternalAuthorityConfiguration?: #IpamScopeExternalAuthorityConfiguration
	// The Id of the IPAM this scope is a part of.
	IpamId: string
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#IpamScopeExternalAuthorityConfiguration: {
	// Resource identifier of the scope in the external service connecting to your AWS IPAM scope.
	ExternalResourceIdentifier: string
	// An external service connecting to your AWS IPAM scope.
	IpamScopeExternalAuthorityType: "infoblox"
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
