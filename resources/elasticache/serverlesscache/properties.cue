package serverlesscache

import "strings"

#Properties: {
	CacheUsageLimits?: #CacheUsageLimits
	// The daily time range (in UTC) during which the service takes automatic snapshot of the Serverless Cache.
	DailySnapshotTime?: string
	// The description of the Serverless Cache.
	Description?: string
	// The engine name of the Serverless Cache.
	Engine: string
	// The final snapshot name which is taken before Serverless Cache is deleted.
	FinalSnapshotName?: string
	// The ID of the KMS key used to encrypt the cluster.
	KmsKeyId?: string
	// The major engine version of the Serverless Cache.
	MajorEngineVersion?: string
	// One or more Amazon VPC security groups associated with this Serverless Cache.
	SecurityGroupIds?: [...string]
	// The name of the Serverless Cache. This value must be unique.
	ServerlessCacheName: string
	// The ARN's of snapshot to restore Serverless Cache.
	SnapshotArnsToRestore?: [...string]
	// The snapshot retention limit of the Serverless Cache.
	SnapshotRetentionLimit?: int
	// The subnet id's of the Serverless Cache.
	SubnetIds?: [...string]
	// An array of key-value pairs to apply to this Serverless Cache.
	Tags?: [...#Tag]
	// The ID of the user group.
	UserGroupId?: string
}

#CacheUsageLimits: {
	DataStorage?: #DataStorage
	ECPUPerSecond?: #ECPUPerSecond
}

#DataStorage: {
	// The maximum cached data capacity of the Serverless Cache.
	Maximum?: int
	// The minimum cached data capacity of the Serverless Cache.
	Minimum?: int
	// The unit of cached data capacity of the Serverless Cache.
	Unit: "GB"
}

#ECPUPerSecond: {
	// The maximum ECPU per second of the Serverless Cache.
	Maximum?: int
	// The minimum ECPU per second of the Serverless Cache.
	Minimum?: int
}

#Endpoint: {
	// Endpoint address.
	Address?: string
	// Endpoint port.
	Port?: string
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with 'aws:'. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^(?!aws:)[a-zA-Z0-9 _\\.\\/=+:\\-@]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & =~"^[a-zA-Z0-9 _\\.\\/=+:\\-@]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
