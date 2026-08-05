package directorybucket

import "strings"

#Properties: {
	BucketEncryption?: #BucketEncryption
	// Specifies a name for the bucket. The bucket name must contain only lowercase letters, numbers, and hyphens (-). A directory bucket name must be unique in the chosen Availability Zone or Local Zone. The bucket name must also follow the format 'bucket_base_name--zone_id--x-s3'. The zone_id can be the ID of an Availability Zone or a Local Zone. If you don't specify a name, AWS CloudFormation generates a unique physical ID and uses that ID for the bucket name.
	BucketName?: string & =~"^[a-z0-9][a-z0-9//.//-]*[a-z0-9]$" & strings.MaxRunes(63)
	// Specifies the number of Availability Zone or Local Zone that's used for redundancy for the bucket.
	DataRedundancy: "SingleAvailabilityZone" | "SingleLocalZone"
	// The inventory configuration for an Amazon S3 Express bucket.
	InventoryConfigurations?: [...#InventoryConfiguration]
	// Lifecycle rules that define how Amazon S3 Express manages objects during their lifetime.
	LifecycleConfiguration?: #LifecycleConfiguration
	// Specifies the Zone ID of the Availability Zone or Local Zone where the directory bucket will be created. An example Availability Zone ID value is 'use1-az5'.
	LocationName: string
	// Specifies the metrics configurations for the Amazon S3 Express bucket.
	MetricsConfigurations?: [...#MetricsConfiguration]
	Tags?: [...#Tag]
}

#AbortIncompleteMultipartUpload: {
	// Specifies the number of days after which Amazon S3 aborts an incomplete multipart upload.
	DaysAfterInitiation: int & >=0
}

#BucketEncryption: {
	// Specifies the default server-side-encryption configuration.
	ServerSideEncryptionConfiguration: [...#ServerSideEncryptionRule]
}

#Destination: {
	// The account ID that owns the destination S3 bucket. 
	BucketAccountId?: string
	// The Amazon Resource Name (ARN) of the destination Amazon S3 bucket to which data is exported.
	BucketArn: string
	// Specifies the file format used when exporting data to Amazon S3.
	Format: "CSV" | "ORC" | "Parquet"
	// The prefix to use when exporting data. The prefix is prepended to all results.
	Prefix?: string
}

#InventoryConfiguration: {
	Destination: #Destination
	// Specifies whether the inventory is enabled or disabled.
	Enabled: bool
	// The ID used to identify the inventory configuration.
	Id: string
	// Object versions to include in the inventory list.
	IncludedObjectVersions: "All" | "Current"
	// Contains the optional fields that are included in the inventory results.
	OptionalFields?: [..."Size" | "LastModifiedDate" | "StorageClass" | "ETag" | "IsMultipartUploaded" | "EncryptionStatus" | "BucketKeyStatus" | "ChecksumAlgorithm" | "LifecycleExpirationDate"]
	// The prefix that is prepended to all inventory results.
	Prefix?: string
	// Specifies the schedule for generating inventory results.
	ScheduleFrequency: "Daily" | "Weekly"
}

#LifecycleConfiguration: {
	// A lifecycle rule for individual objects in an Amazon S3 Express bucket.
	Rules: [...#Rule]
}

#MetricsConfiguration: {
	// The access point ARN used when evaluating a metrics filter.
	AccessPointArn?: string
	// The ID used to identify the metrics configuration.
	Id: string
	// The prefix used when evaluating a metrics filter.
	Prefix?: string
}

#Rule: {
	AbortIncompleteMultipartUpload?: #AbortIncompleteMultipartUpload
	ExpirationInDays?: int
	Id?: string & strings.MaxRunes(255)
	ObjectSizeGreaterThan?: string & =~"[0-9]+" & strings.MaxRunes(20)
	ObjectSizeLessThan?: string & =~"[0-9]+" & strings.MaxRunes(20)
	Prefix?: string
	Status: "Enabled" | "Disabled"
}

#ServerSideEncryptionByDefault: {
	// AWS Key Management Service (KMS) customer managed key ID to use for the default encryption. This parameter is allowed only if SSEAlgorithm is set to aws:kms. You can specify this parameter with the key ID or the Amazon Resource Name (ARN) of the KMS key
	KMSMasterKeyID?: string | string
	SSEAlgorithm: "aws:kms" | "AES256"
}

#ServerSideEncryptionRule: {
	// Specifies whether Amazon S3 should use an S3 Bucket Key with server-side encryption using KMS (SSE-KMS) for new objects in the bucket. Existing objects are not affected. Amazon S3 Express One Zone uses an S3 Bucket Key with SSE-KMS and S3 Bucket Key cannot be disabled. It's only allowed to set the BucketKeyEnabled element to true.
	BucketKeyEnabled?: bool
	ServerSideEncryptionByDefault?: #ServerSideEncryptionByDefault
}

#Tag: {
	Key: string & =~"^(?!aws:.*)([\\p{L}\\p{Z}\\p{N}_.:=+\\/\\-@%]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:=+\\/\\-@%]*)$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
