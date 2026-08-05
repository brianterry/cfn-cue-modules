package datasource

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Identifier for a resource.
	DataSourceId: string & =~"^[0-9a-zA-Z]{10}$"
	DataSourceStatus: #DataSourceStatus
	// The time at which the data source was created.
	CreatedAt: string
	// The time at which the knowledge base was last updated.
	UpdatedAt: string
	// The details of the failure reasons related to the data source.
	FailureReasons: [...string & strings.MaxRunes(2048)]
	DataSourceConfiguration: #DataSourceConfiguration
}
