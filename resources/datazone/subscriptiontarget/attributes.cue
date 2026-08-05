package subscriptiontarget

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The timestamp of when the subscription target was created.
	CreatedAt: string
	// The Amazon DataZone user who created the subscription target.
	CreatedBy: string
	// The ID of the Amazon DataZone domain in which subscription target is created.
	DomainId: string & =~"^dzd[-_][a-zA-Z0-9_-]{1,36}$"
	// The ID of the environment in which subscription target is created.
	EnvironmentId: string & =~"^[a-zA-Z0-9_-]{1,36}$"
	// The ID of the subscription target.
	Id: string & =~"^[a-zA-Z0-9_-]{1,36}$"
	// The identifier of the project specified in the subscription target.
	ProjectId: string & =~"^[a-zA-Z0-9_-]{1,36}$"
	// The timestamp of when the subscription target was updated.
	UpdatedAt: string
	// The Amazon DataZone user who updated the subscription target.
	UpdatedBy: string
}
