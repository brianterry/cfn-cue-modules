package vectorbucket

import "strings"

#Properties: {
	EncryptionConfiguration?: #EncryptionConfiguration
	// User tags (key-value pairs) to associate with the vector bucket.
	Tags?: [...#Tag]
	VectorBucketName?: #VectorBucketName
}

#EncryptionConfiguration: {
	// AWS Key Management Service (KMS) customer managed key ID to use for the encryption configuration. This parameter is allowed if and only if sseType is set to aws:kms
	KmsKeyArn?: string & =~"^(arn:aws[-a-z0-9]*:kms:[-a-z0-9]*:[0-9]{12}:key/.+)$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// The server-side encryption type to use for the encryption configuration of the vector bucket. By default, if you don't specify, all new vectors in Amazon S3 vector buckets use server-side encryption with Amazon S3 managed keys (SSE-S3), specifically AES256.
	SseType?: "AES256" | "aws:kms"
}

#Tag: {
	// Tag key must be between 1 to 128 characters in length. Tag key cannot start with 'aws:' and can only contain alphanumeric characters, spaces, _, ., /, =, +, -, and @.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// Tag value must be between 0 to 256 characters in length. Tag value can only contain alphanumeric characters, spaces, _, ., /, =, +, -, and @.
	Value: string & strings.MaxRunes(256)
}
