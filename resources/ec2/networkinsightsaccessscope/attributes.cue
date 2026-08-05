package networkinsightsaccessscope

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	NetworkInsightsAccessScopeId: string
	NetworkInsightsAccessScopeArn: string
	CreatedDate: string
	UpdatedDate: string
}
