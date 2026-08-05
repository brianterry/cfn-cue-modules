package directconnectgateway

import "strings"

#Properties: {
	// The autonomous system number (ASN) for the Amazon side of the connection.
	AmazonSideAsn?: string & =~"^[1-9][0-9]*$"
	// The name of the Direct Connect gateway.
	DirectConnectGatewayName: string & =~"^[\\w \\-_,\\/]{1,100}$"
	// The tags associated with the Direct Connect gateway.
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
