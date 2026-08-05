package table

import "strings"

#Properties: {
	// The name for the database which the table to be created belongs to.
	DatabaseName: string & =~"^[a-zA-Z0-9_.-]{3,256}$"
	// The properties that determine whether magnetic store writes are enabled.
	MagneticStoreWriteProperties?: {
		EnableMagneticStoreWrites: bool
		MagneticStoreRejectedDataLocation?: {
			S3Configuration?: {
				BucketName: string
				EncryptionOption: string
				KmsKeyId?: string
				ObjectKeyPrefix?: string
			}
		}
	}
	// The retention duration of the memory store and the magnetic store.
	RetentionProperties?: {
		MagneticStoreRetentionPeriodInDays?: string
		MemoryStoreRetentionPeriodInHours?: string
	}
	// A Schema specifies the expected data model of the table.
	Schema?: {
		CompositePartitionKey?: #PartitionKeyList
	}
	// The name for the table. If you don't specify a name, AWS CloudFormation generates a unique physical ID and uses that ID for the table name.
	TableName?: string & =~"^[a-zA-Z0-9_.-]{3,256}$"
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#PartitionKey: {
	EnforcementInRecord?: #PartitionKeyEnforcementLevel
	Name?: #SchemaName
	Type: #PartitionKeyType
}

#Tag: {
	Key?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
