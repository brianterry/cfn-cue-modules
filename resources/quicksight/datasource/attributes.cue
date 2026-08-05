package datasource

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// <p>The Amazon Resource Name (ARN) of the data source.</p>
	Arn: string
	// <p>The time that this data source was created.</p>
	CreatedTime: string
	// <p>The last time that this data source was updated.</p>
	LastUpdatedTime: string
	Status: #ResourceStatus
}
