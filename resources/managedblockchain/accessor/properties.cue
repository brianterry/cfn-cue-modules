package accessor

import "strings"

#Properties: {
	AccessorType: #AccessorType
	NetworkType?: #NetworkAccessorType
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#AccessorStatus: "AVAILABLE" | "PENDING_DELETION" | "DELETED"

#AccessorType: "BILLING_TOKEN"

#NetworkAccessorType: "ETHEREUM_GOERLI" | "ETHEREUM_MAINNET" | "ETHEREUM_MAINNET_AND_GOERLI" | "POLYGON_MAINNET" | "POLYGON_MUMBAI"

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(127)
	// The value for the tag. You can specify a value that is 1 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(255)
}
