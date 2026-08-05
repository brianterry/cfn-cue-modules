package globalcluster

import "strings"

#Properties: {
	// Whether deletion protection is enabled.
	DeletionProtection?: bool
	// The name of the database engine.
	Engine?: "neptune"
	// The version number of the database engine.
	EngineVersion?: string
	// The cluster identifier of the global database cluster.
	GlobalClusterIdentifier?: string & =~"^[A-Za-z][0-9A-Za-z-:._]*$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// The Amazon Resource Name (ARN) of an existing Neptune DB cluster to use as the primary cluster of the new global database.
	SourceDBClusterIdentifier?: string
	// Whether the global database cluster is storage encrypted.
	StorageEncrypted?: bool
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
