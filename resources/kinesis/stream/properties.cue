package stream

import "strings"

#Properties: {
	// The final list of shard-level metrics
	DesiredShardLevelMetrics?: [...#EnhancedMetric]
	// Maximum size of a data record in KiB allowed to be put into Kinesis stream.
	MaxRecordSizeInKiB?: int & >=1024 & <=10240
	// The name of the Kinesis stream.
	Name?: string & =~"^[a-zA-Z0-9_.-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The number of hours for the data records that are stored in shards to remain accessible.
	RetentionPeriodHours?: int & >=24
	// The number of shards that the stream uses. Required when StreamMode = PROVISIONED is passed.
	ShardCount?: int & >=1
	// When specified, enables or updates server-side encryption using an AWS KMS key for a specified stream.
	StreamEncryption?: #StreamEncryption
	// The mode in which the stream is running.
	StreamModeDetails?: #StreamModeDetails
	// An arbitrary set of tags (key-value pairs) to associate with the Kinesis stream.
	Tags?: [...#Tag]
	// Target warm throughput in MiB/s for the stream. This property can ONLY be set when StreamMode is ON_DEMAND.
	WarmThroughputMiBps?: int
}

#EnhancedMetric: "IncomingBytes" | "IncomingRecords" | "OutgoingBytes" | "OutgoingRecords" | "WriteProvisionedThroughputExceeded" | "ReadProvisionedThroughputExceeded" | "IteratorAgeMilliseconds" | "ALL"

#StreamEncryption: {
	// The encryption type to use. The only valid value is KMS.
	EncryptionType: "KMS"
	// The GUID for the customer-managed AWS KMS key to use for encryption. This value can be a globally unique identifier, a fully specified Amazon Resource Name (ARN) to either an alias or a key, or an alias name prefixed by "alias/".You can also use a master key owned by Kinesis Data Streams by specifying the alias aws/kinesis.
	KeyId: string | string
}

#StreamModeDetails: {
	// The mode of the stream
	StreamMode: "ON_DEMAND" | "PROVISIONED"
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(255)
}

#WarmThroughputObject: {
	// Current warm throughput in MiB/s
	CurrentMiBps?: int
	// Target warm throughput in MiB/s that a customer can write to a stream at any given time
	TargetMiBps?: int
}
