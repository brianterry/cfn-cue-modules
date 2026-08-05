package globalcluster

import "strings"

#Properties: {
	// The deletion protection setting for the new global database. The global database can't be deleted when deletion protection is enabled.
	DeletionProtection?: bool
	// The name of the database engine to be used for this DB cluster. Valid Values: aurora (for MySQL 5.6-compatible Aurora), aurora-mysql (for MySQL 5.7-compatible Aurora).
	// If you specify the SourceDBClusterIdentifier property, don't specify this property. The value is inherited from the cluster.
	Engine?: "aurora" | "aurora-mysql" | "aurora-postgresql"
	// The life cycle type of the global cluster. You can use this setting to enroll your global cluster into Amazon RDS Extended Support.
	EngineLifecycleSupport?: string
	// The version number of the database engine to use. If you specify the SourceDBClusterIdentifier property, don't specify this property. The value is inherited from the cluster.
	EngineVersion?: string
	// The cluster identifier of the new global database cluster. This parameter is stored as a lowercase string.
	GlobalClusterIdentifier?: string & =~"^[a-zA-Z]{1}(?:-?[a-zA-Z0-9]){0,62}$" & strings.MinRunes(1) & strings.MaxRunes(63)
	// The Amazon Resource Name (ARN) to use as the primary cluster of the global database. This parameter is optional. This parameter is stored as a lowercase string.
	SourceDBClusterIdentifier?: string & =~"^[a-zA-Z]{1}(?:-?[a-zA-Z0-9]){0,62}$" | string & =~"^(?=.{40,128}$)arn.*"
	// The storage encryption setting for the new global database cluster.
	// If you specify the SourceDBClusterIdentifier property, don't specify this property. The value is inherited from the cluster.
	StorageEncrypted?: bool
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#GlobalEndpoint: {
	// The writer endpoint for the global database cluster. This endpoint always points to the writer DB instance in the current primary cluster.
	Address?: string
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
