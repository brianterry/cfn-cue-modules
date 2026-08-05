package resolverconfig

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// AccountId
	OwnerId: string & strings.MinRunes(12) & strings.MaxRunes(32)
	// Id
	Id: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// ResolverAutodefinedReverseStatus, possible values are ENABLING, ENABLED, DISABLING AND DISABLED.
	AutodefinedReverse: "ENABLING" | "ENABLED" | "DISABLING" | "DISABLED"
}
