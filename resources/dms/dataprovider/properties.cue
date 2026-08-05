package dataprovider

import "strings"

#Properties: {
	// The property describes an identifier for the data provider. It is used for describing/deleting/modifying can be name/arn
	DataProviderIdentifier?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The property describes a name to identify the data provider.
	DataProviderName?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The optional description of the data provider.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The property describes a data engine for the data provider.
	Engine: "aurora" | "aurora_postgresql" | "mysql" | "oracle" | "postgres" | "sqlserver" | "redshift" | "mariadb" | "mongodb" | "docdb" | "db2" | "db2_zos" | "sybase"
	// The property describes the exact settings which can be modified
	ExactSettings?: bool
	// The property identifies the exact type of settings for the data provider.
	Settings?: string | string | string | string | string | string | string | string | string | string | string
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
