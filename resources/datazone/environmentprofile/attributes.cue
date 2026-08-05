package environmentprofile

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The timestamp of when this environment profile was created.
	CreatedAt: string
	// The Amazon DataZone user who created this environment profile.
	CreatedBy: string
	// The ID of the Amazon DataZone domain in which this environment profile is created.
	DomainId: string & =~"^dzd[-_][a-zA-Z0-9_-]{1,36}$"
	// The ID of the blueprint with which this environment profile is created.
	EnvironmentBlueprintId: string & =~"^[a-zA-Z0-9_-]{1,36}$"
	// The ID of this Amazon DataZone environment profile.
	Id: string & =~"^[a-zA-Z0-9_-]{1,36}$"
	// The identifier of the project in which to create the environment profile.
	ProjectId: string & =~"^[a-zA-Z0-9_-]{1,36}$"
	// The timestamp of when this environment profile was updated.
	UpdatedAt: string
}
