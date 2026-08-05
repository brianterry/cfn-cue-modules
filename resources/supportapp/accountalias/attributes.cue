package accountalias

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Unique identifier representing an alias tied to an account
	AccountAliasResourceId: string & =~"^[\\w\\- ]+$" & strings.MinRunes(29) & strings.MaxRunes(29)
}
