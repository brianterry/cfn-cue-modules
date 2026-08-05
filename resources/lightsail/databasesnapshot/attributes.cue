package databasesnapshot

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the database snapshot.
	Arn: string & =~".*\\S.*"
	// The timestamp when the database snapshot was created.
	CreatedAt: string
	// The software of the database snapshot (for example, MySQL).
	Engine: string & =~".*\\S.*"
	// The database engine version for the database snapshot (for example, 5.7.23).
	EngineVersion: string & =~".*\\S.*"
	// The Amazon Resource Name (ARN) of the database from which the database snapshot was created.
	FromRelationalDatabaseArn: string & =~".*\\S.*"
	// The blueprint ID of the database from which the database snapshot was created. A blueprint describes the major engine version of a database.
	FromRelationalDatabaseBlueprintId: string
	// The bundle ID of the database from which the database snapshot was created.
	FromRelationalDatabaseBundleId: string
	// The name of the source database from which the database snapshot was created.
	FromRelationalDatabaseName: string & =~".*\\S.*"
	// The Region name and Availability Zone where the database snapshot is located.
	Location: {
	AvailabilityZone?: string
	RegionName?: string
}
	// The name of the database snapshot.
	Name: string & =~"^\\w[\\w\\-]*\\w$"
	// The Lightsail resource type.
	ResourceType: "RelationalDatabaseSnapshot"
	// The size of the disk in GB (for example, 32) for the database snapshot.
	SizeInGb: int
	// The state of the database snapshot.
	State: string & =~".*\\S.*"
	// The support code for the database snapshot. Include this code in your email to support when you have questions about a database snapshot in Lightsail. This code enables our support team to look up your Lightsail information more easily.
	SupportCode: string
}
