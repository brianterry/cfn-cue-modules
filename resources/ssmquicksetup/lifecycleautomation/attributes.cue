package lifecycleautomation

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The id from the association that is returned when creating the association
	AssociationId: string & =~"^[a-zA-Z0-9-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
}
