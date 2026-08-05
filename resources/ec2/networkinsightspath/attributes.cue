package networkinsightspath

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	NetworkInsightsPathId: string
	NetworkInsightsPathArn: string
	CreatedDate: string
	SourceArn: string
	DestinationArn: string
}
