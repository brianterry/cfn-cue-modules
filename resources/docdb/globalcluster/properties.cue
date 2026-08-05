package globalcluster

import "strings"

#Properties: {
	// Indicates whether the global cluster has deletion protection enabled. The global cluster can't be deleted when deletion protection is enabled.
	DeletionProtection?: bool
	// The database engine to use for this global cluster.
	Engine?: "docdb"
	// The engine version to use for this global cluster.
	EngineVersion?: string
	// The cluster identifier of the global cluster.
	GlobalClusterIdentifier: string & =~"^[a-zA-Z]{1}(?:-?[a-zA-Z0-9]){0,62}$" & strings.MinRunes(1) & strings.MaxRunes(63)
	// The Amazon Resource Name (ARN) to use as the primary cluster of the global cluster. You may also choose to instead specify the DBClusterIdentifier. If you provide a value for this parameter, don't specify values for the following settings because Amazon DocumentDB uses the values from the specified source DB cluster: Engine, EngineVersion, StorageEncrypted
	SourceDBClusterIdentifier?: string & =~"^[a-zA-Z]{1}(?:-?[a-zA-Z0-9]){0,62}$" | string & =~"^(?=.{40,128}$)arn.*"
	// Indicates whether the global cluster has storage encryption enabled.
	StorageEncrypted?: bool
	// The tags to be assigned to the Amazon DocumentDB resource.
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
