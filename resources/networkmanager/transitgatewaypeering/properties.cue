package transitgatewaypeering

import "strings"

#Properties: {
	// The Id of the core network that you want to peer a transit gateway to.
	CoreNetworkId: string
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// The ARN (Amazon Resource Name) of the transit gateway that you will peer to a core network
	TransitGatewayArn: string
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
