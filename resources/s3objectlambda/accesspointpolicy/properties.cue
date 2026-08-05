package accesspointpolicy

import "strings"

#Properties: {
	// The name of the Amazon S3 ObjectLambdaAccessPoint to which the policy applies.
	ObjectLambdaAccessPoint: string & =~"^[a-z0-9]([a-z0-9\\-]*[a-z0-9])?$" & strings.MinRunes(3) & strings.MaxRunes(45)
	// A policy document containing permissions to add to the specified ObjectLambdaAccessPoint. For more information, see Access Policy Language Overview (https://docs.aws.amazon.com/AmazonS3/latest/dev/access-policy-language-overview.html) in the Amazon Simple Storage Service Developer Guide.
	PolicyDocument: {...}
}
