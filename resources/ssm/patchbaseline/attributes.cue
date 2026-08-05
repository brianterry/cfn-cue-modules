package patchbaseline

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ID of the patch baseline.
	Id: string & =~"^[a-zA-Z0-9_\\-:/]{20,128}$" & strings.MinRunes(20) & strings.MaxRunes(128)
}
