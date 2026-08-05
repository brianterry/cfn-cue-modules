package verifiedaccessgroup

import "strings"

#Properties: {
	// A description for the AWS Verified Access group.
	Description?: string
	// The AWS Verified Access policy document.
	PolicyDocument?: string
	// The status of the Verified Access policy.
	PolicyEnabled?: bool
	// The configuration options for customer provided KMS encryption.
	SseSpecification?: #SseSpecification
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// The ID of the AWS Verified Access instance.
	VerifiedAccessInstanceId: string
}

#SseSpecification: {
	// Whether to encrypt the policy with the provided key or disable encryption
	CustomerManagedKeyEnabled?: bool
	// KMS Key Arn used to encrypt the group policy
	KmsKeyArn?: string
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
