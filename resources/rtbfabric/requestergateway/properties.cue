package requestergateway

import "strings"

#Properties: {
	Description?: #Description
	SecurityGroupIds: #SecurityGroupIds
	SubnetIds: #SubnetIds
	Tags?: #Tags
	VpcId: #VpcId
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^(resourceArn|internalId|[a-zA-Z0-9+\\-=._:/@]+)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(1600)
}
