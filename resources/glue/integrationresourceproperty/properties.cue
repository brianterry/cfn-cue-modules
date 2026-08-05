package integrationresourceproperty

import "strings"

#Properties: {
	// The connection ARN of the source, or the database ARN of the target.
	ResourceArn: string & =~"arn:aws:.*:.*:[0-9]+:.*"
	// The resource properties associated with the integration source.
	SourceProcessingProperties?: {
		RoleArn: string & strings.MaxRunes(128)
	}
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// The resource properties associated with the integration target.
	TargetProcessingProperties?: {
		ConnectionName?: string & strings.MaxRunes(128)
		EventBusArn?: string & strings.MaxRunes(128)
		KmsArn?: string & =~"arn:aws:kms:.*:[0-9]+:.*" & strings.MaxRunes(128)
		RoleArn: string & =~"arn:aws:iam:.*:[0-9]+:.*" & strings.MaxRunes(128)
	}
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
