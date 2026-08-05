package index

import "strings"

#Properties: {
	DataType: #DataType
	Dimension: #Dimension
	DistanceMetric: #DistanceMetric
	EncryptionConfiguration?: #EncryptionConfiguration
	IndexName?: #IndexName
	MetadataConfiguration?: #MetadataConfiguration
	// User tags (key-value pairs) to associate with the index.
	Tags?: [...#Tag]
	VectorBucketArn?: #VectorBucketArn
	VectorBucketName?: #VectorBucketName
}

#EncryptionConfiguration: {
	// AWS Key Management Service (KMS) customer managed key ID to use for the encryption configuration. This parameter is allowed if and only if sseType is set to aws:kms
	KmsKeyArn?: string & =~"^(arn:aws[-a-z0-9]*:kms:[-a-z0-9]*:[0-9]{12}:key/.+)$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// Defines the server-side encryption type for index encryption configuration. Defaults to the parent vector bucket's encryption settings when unspecified.
	SseType?: "AES256" | "aws:kms"
}

#MetadataConfiguration: {
	// Non-filterable metadata keys allow you to enrich vectors with additional context during storage and retrieval. Unlike default metadata keys, these keys cannot be used as query filters. Non-filterable metadata keys can be retrieved but cannot be searched, queried, or filtered. You can access non-filterable metadata keys of your vectors after finding the vectors.
	NonFilterableMetadataKeys?: [...string & strings.MinRunes(1) & strings.MaxRunes(63)]
}

#Tag: {
	// Tag key must be between 1 to 128 characters in length. Tag key cannot start with 'aws:' and can only contain alphanumeric characters, spaces, _, ., /, =, +, -, and @.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// Tag value must be between 0 to 256 characters in length. Tag value can only contain alphanumeric characters, spaces, _, ., /, =, +, -, and @.
	Value: string & strings.MaxRunes(256)
}
