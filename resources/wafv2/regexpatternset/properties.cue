package regexpatternset

import "strings"

#Properties: {
	// Description of the entity.
	Description?: string & =~"^[a-zA-Z0-9=:#@/\\-,.][a-zA-Z0-9+=:#@/\\-,.\\s]+[a-zA-Z0-9+=:#@/\\-,.]{1,256}$"
	// Name of the RegexPatternSet.
	Name?: string & =~"^[0-9A-Za-z_-]{1,128}$"
	RegularExpressionList: [...string]
	// Use CLOUDFRONT for CloudFront RegexPatternSet, use REGIONAL for Application Load Balancer and API Gateway.
	Scope: "CLOUDFRONT" | "REGIONAL"
	Tags?: [...#Tag]
}

#Tag: {
	Key?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
