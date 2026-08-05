package datamigration

import "strings"

#Properties: {
	// The property describes an ARN of the data migration.
	DataMigrationIdentifier?: string & strings.MinRunes(1) & strings.MaxRunes(300)
	// The property describes a name to identify the data migration.
	DataMigrationName?: string & strings.MinRunes(1) & strings.MaxRunes(300)
	// The property describes the settings for the data migration.
	DataMigrationSettings?: #DataMigrationSettings
	// The property describes the type of migration.
	DataMigrationType: "full-load" | "cdc" | "full-load-and-cdc"
	// The property describes an identifier for the migration project. It is used for describing/deleting/modifying can be name/arn
	MigrationProjectIdentifier: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The property describes Amazon Resource Name (ARN) of the service access role.
	ServiceAccessRoleArn: string & strings.MinRunes(1) & strings.MaxRunes(300)
	// The property describes the settings for the data migration.
	SourceDataSettings?: [...#SourceDataSettings]
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#DataMigrationSettings: {
	// The property specifies whether to enable the CloudWatch log.
	CloudwatchLogsEnabled?: bool
	// The number of parallel jobs that trigger parallel threads to unload the tables from the source, and then load them to the target.
	NumberOfJobs?: int & >=1 & <=50
	// The property specifies the rules of selecting objects for data migration.
	SelectionRules?: string
}

#SourceDataSettings: {
	// The property is a point in the database engine's log that defines a time where you can begin CDC.
	CDCStartPosition?: string & strings.MaxRunes(40)
	// The property indicates the start time for a change data capture (CDC) operation. The value is server time in UTC format.
	CDCStartTime?: string & strings.MaxRunes(40)
	// The property indicates the stop time for a change data capture (CDC) operation. The value is server time in UTC format.
	CDCStopTime?: string & strings.MaxRunes(40)
	// The property sets the name of a previously created logical replication slot for a change data capture (CDC) load of the source instance.
	SlotName?: string & strings.MaxRunes(255)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
