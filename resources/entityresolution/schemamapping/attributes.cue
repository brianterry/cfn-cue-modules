package schemamapping

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	SchemaArn: #SchemaMappingArn
	CreatedAt: #CreatedAt
	UpdatedAt: #UpdatedAt
	HasWorkflows: #HasWorkflows
}
