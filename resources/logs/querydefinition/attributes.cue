package querydefinition

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Unique identifier of a query definition
	QueryDefinitionId: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
