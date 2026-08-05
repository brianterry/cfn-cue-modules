package database

import "strings"

#Properties: {
	// The name for the database. If you don't specify a name, AWS CloudFormation generates a unique physical ID and uses that ID for the database name.
	DatabaseName?: string & =~"^[a-zA-Z0-9_.-]{3,256}$"
	// The KMS key for the database. If the KMS key is not specified, the database will be encrypted with a Timestream managed KMS key located in your account.
	KmsKeyId?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#Tag: {
	Key?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
