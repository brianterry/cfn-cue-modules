package application

import "strings"

#Properties: {
	// Identifier of a KMS key. Can be a key ID, key ARN, alias name, or alias ARN.
	DefaultKmsKeyId?: string & strings.MinRunes(0) & strings.MaxRunes(2048)
	RoleArn?: string
	// Tags for the application
	Tags?: [...#Tag]
}

#IdCConfiguration: {
	IdCApplicationArn?: string
	IdCInstanceArn?: string
}

#Tag: {
	// The key name of the tag
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
