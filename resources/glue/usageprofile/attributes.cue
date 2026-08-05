package usageprofile

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Creation time.
	CreatedOn: string & strings.MinRunes(1) & strings.MaxRunes(128)
}
