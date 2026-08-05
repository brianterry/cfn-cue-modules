package s3tableintegration

import "strings"

#Properties: {
	Encryption: #EncryptionConfig
	// The ARN of the role used to access the S3 Table Integration
	RoleArn: string & =~"^arn:aws([a-z0-9\\-]+)?:([a-zA-Z0-9\\-]+):([a-z0-9\\-]+)?:([0-9]{12})?:(.+)$" & strings.MinRunes(1) & strings.MaxRunes(1011)
	// An array of key-value pairs to apply to this resource
	Tags?: [...#Tag]
}

#EncryptionConfig: {
	// The ARN of the KMS key used to encrypt the S3 Table Integration
	KmsKeyArn?: string & =~"^arn:aws([a-z0-9\\-]+)?:([a-zA-Z0-9\\-]+):([a-z0-9\\-]+)?:([0-9]{12})?:(.+)$" & strings.MinRunes(1) & strings.MaxRunes(1011)
	// The server-side encryption algorithm used to encrypt the S3 Table(s) data
	SseAlgorithm: "AES256" | "aws:kms"
}

#LogSource: {
	// The ID of the CloudWatch Logs data source association
	Identifier?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// The name of the CloudWatch Logs data source
	Name: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// The type of the CloudWatch Logs data source
	Type: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
