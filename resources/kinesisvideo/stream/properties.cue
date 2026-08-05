package stream

import "strings"

#Properties: {
	// The number of hours till which Kinesis Video will retain the data in the stream
	DataRetentionInHours?: int & >=0 & <=87600
	// The name of the device that is writing to the stream.
	DeviceName?: string & =~"[a-zA-Z0-9_.-]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	// AWS KMS key ID that Kinesis Video Streams uses to encrypt stream data.
	KmsKeyId?: string & =~".+" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// The media type of the stream. Consumers of the stream can use this information when processing the stream.
	MediaType?: string & =~"[\\w\\-\\.\\+]+/[\\w\\-\\.\\+]+(,[\\w\\-\\.\\+]+/[\\w\\-\\.\\+]+)*" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The name of the Kinesis Video stream.
	Name?: string & =~"[a-zA-Z0-9_.-]+" & strings.MinRunes(1) & strings.MaxRunes(256)
	// Configuration for the storage tier of the Kinesis Video Stream.
	StreamStorageConfiguration?: #StreamStorageConfiguration
	// An array of key-value pairs associated with the Kinesis Video Stream.
	Tags?: [...#Tag]
}

#StreamStorageConfiguration: {
	// The storage tier for the Kinesis Video Stream. Determines the storage class used for stream data.
	DefaultStorageTier?: "HOT" | "WARM"
}

#Tag: {
	// The key name of the tag. Specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. The following characters can be used: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. Specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. The following characters can be used: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
