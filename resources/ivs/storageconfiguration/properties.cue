package storageconfiguration

import "strings"

#Properties: {
	// Storage Configuration Name.
	Name?: string & =~"^[a-zA-Z0-9-_]*$" & strings.MinRunes(0) & strings.MaxRunes(128)
	S3: #S3StorageConfiguration
	// A list of key-value pairs that contain metadata for the asset model.
	Tags?: [...#Tag]
}

#S3StorageConfiguration: {
	// Location (S3 bucket name) where recorded videos will be stored. Note that the StorageConfiguration and S3 bucket must be in the same region as the Composition.
	BucketName: string & =~"^[a-z0-9-.]+$" & strings.MinRunes(3) & strings.MaxRunes(63)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
