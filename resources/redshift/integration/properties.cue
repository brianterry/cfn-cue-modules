package integration

import "strings"

#Properties: {
	AdditionalEncryptionContext?: #EncryptionContextMap
	// The name of the integration.
	IntegrationName?: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// An KMS key identifier for the key to use to encrypt the integration. If you don't specify an encryption key, the default AWS owned KMS key is used.
	KMSKeyId?: string
	// The Amazon Resource Name (ARN) of the database to use as the source for replication
	SourceArn: string
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// The Amazon Resource Name (ARN) of the Redshift data warehouse to use as the target for replication
	TargetArn: string
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
