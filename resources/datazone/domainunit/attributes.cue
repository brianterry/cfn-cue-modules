package domainunit

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The timestamp at which the domain unit was created.
	CreatedAt: string
	// The ID of the domain where the domain unit was created.
	DomainId: string & =~"^dzd[-_][a-zA-Z0-9_-]{1,36}$"
	// The ID of the domain unit.
	Id: string & =~"^[a-z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The identifier of the domain unit that you want to get.
	Identifier: string & =~"^[a-z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The ID of the parent domain unit.
	ParentDomainUnitId: string & =~"^[a-z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The timestamp at which the domain unit was last updated.
	LastUpdatedAt: string
}
