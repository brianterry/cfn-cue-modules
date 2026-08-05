package dashboard

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// <p>The Amazon Resource Name (ARN) of the resource.</p>
	Arn: string
	// <p>The time that this dashboard was created.</p>
	CreatedTime: string
	// <p>The last time that this dashboard was published.</p>
	LastPublishedTime: string
	// <p>The last time that this dashboard was updated.</p>
	LastUpdatedTime: string
	Version: #DashboardVersion
}
