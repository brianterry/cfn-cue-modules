package tablebucket

import "strings"

#Properties: {
	EncryptionConfiguration?: #EncryptionConfiguration
	MetricsConfiguration?: #MetricsConfiguration
	ReplicationConfiguration?: #ReplicationConfiguration
	StorageClassConfiguration?: #StorageClassConfiguration
	TableBucketName: #TableBucketName
	// User tags (key-value pairs) to associate with the table bucket.
	Tags?: [...#Tag]
	UnreferencedFileRemoval?: #UnreferencedFileRemoval
}

#EncryptionConfiguration: {
	// ARN of the KMS key to use for encryption
	KMSKeyArn?: string
	// Server-side encryption algorithm
	SSEAlgorithm?: "AES256" | "aws:kms"
}

#MetricsConfiguration: {
	// Indicates whether Metrics are enabled.
	Status?: "Enabled" | "Disabled"
}

#ReplicationConfiguration: {
	// The ARN of the IAM role to use for replication
	Role: string
	// List of replication rules
	Rules: [...#ReplicationRule]
}

#ReplicationDestination: {
	// The ARN of the destination table bucket
	DestinationTableBucketARN: string
}

#ReplicationRule: {
	// List of replication destinations
	Destinations: [...#ReplicationDestination]
}

#StorageClassConfiguration: {
	// The storage class for the table bucket
	StorageClass?: "STANDARD" | "INTELLIGENT_TIERING"
}

#Tag: {
	// Tag key must be between 1 to 128 characters in length. Tag key cannot start with 'aws:' and can only contain alphanumeric characters, spaces, _, ., /, =, +, -, and @.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// Tag value must be between 0 to 256 characters in length. Tag value can only contain alphanumeric characters, spaces, _, ., /, =, +, -, and @.
	Value: string & strings.MaxRunes(256)
}

#UnreferencedFileRemoval: {
	// S3 permanently deletes noncurrent objects after the number of days specified by the NoncurrentDays property.
	NoncurrentDays?: int & >=1
	// Indicates whether the Unreferenced File Removal maintenance action is enabled.
	Status?: "Enabled" | "Disabled"
	// For any object not referenced by your table and older than the UnreferencedDays property, S3 creates a delete marker and marks the object version as noncurrent.
	UnreferencedDays?: int & >=1
}
