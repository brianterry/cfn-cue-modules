package type

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// List of Tables that directly reference the User-Defined Type in their columns.
	DirectReferringTables: [...string]
	// List of parent User-Defined Types that directly reference the User-Defined Type in their fields.
	DirectParentTypes: [...string]
	// Maximum nesting depth of the User-Defined Type across the field types.
	MaxNestingDepth: int
	// Timestamp of the last time the User-Defined Type's meta data was modified.
	LastModifiedTimestamp: number
	// ARN of the Keyspace which contains the User-Defined Type.
	KeyspaceArn: string
}
