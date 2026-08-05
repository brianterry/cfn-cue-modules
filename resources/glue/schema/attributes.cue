package schema

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Amazon Resource Name for the Schema.
	Arn: string & =~"arn:aws(-(cn|us-gov|iso(-[bef])?))?:glue:.*"
	// Represents the version ID associated with the initial schema version.
	InitialSchemaVersionId: string & =~"[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}"
}
