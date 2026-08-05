package project

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ID of the Amazon DataZone project.
	Id: string & =~"^[a-zA-Z0-9_-]{1,36}$"
	// The timestamp of when the project was created.
	CreatedAt: string
	// The Amazon DataZone user who created the project.
	CreatedBy: string
	// The identifier of the Amazon DataZone domain in which the project was created.
	DomainId: string & =~"^dzd[-_][a-zA-Z0-9_-]{1,36}$"
	// The timestamp of when the project was last updated.
	LastUpdatedAt: string
	// The status of the project.
	ProjectStatus: #ProjectStatus
}
