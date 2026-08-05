package domain

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	DomainId: string & =~"^[a-zA-Z0-9]{22}$" & strings.MinRunes(22) & strings.MaxRunes(22)
}
