package formtype

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ID of the Amazon DataZone domain in which this metadata form type is created.
	DomainId: string & =~"^dzd[-_][a-zA-Z0-9_-]{1,36}$"
	// The ID of the project that owns this Amazon DataZone metadata form type.
	OwningProjectId: string & =~"^[a-zA-Z0-9_-]{1,36}$"
	// The revision of this Amazon DataZone metadata form type.
	Revision: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// The ID of this Amazon DataZone metadata form type.
	FormTypeIdentifier: string & =~"^(?!\\.)[\\w\\.]*\\w$" & strings.MinRunes(1) & strings.MaxRunes(385)
	// The timestamp of when this Amazon DataZone metadata form type was created.
	CreatedAt: string
	// The user who created this Amazon DataZone metadata form type.
	CreatedBy: string & =~"^[a-zA-Z0-9_-]{1,36}$"
}
