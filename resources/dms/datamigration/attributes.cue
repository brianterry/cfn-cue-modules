package datamigration

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The property describes an ARN of the data migration.
	DataMigrationArn: string & strings.MinRunes(1) & strings.MaxRunes(300)
	// The property describes the create time of the data migration.
	DataMigrationCreateTime: string & strings.MinRunes(1) & strings.MaxRunes(40)
}
