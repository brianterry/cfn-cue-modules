package schema

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the schema.
	SchemaArn: string
	// The last modified time of the schema.
	LastModified: string
	// The date the schema version was created.
	VersionCreatedDate: string
	// The version number of the schema.
	SchemaVersion: string
}
