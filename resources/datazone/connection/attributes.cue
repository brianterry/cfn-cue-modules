package connection

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ID of the connection.
	ConnectionId: string & =~"^[a-zA-Z0-9]+$" & strings.MaxRunes(128)
	// The ID of the domain in which the connection is created.
	DomainId: string & =~"^dzd[_-][a-zA-Z0-9_-]{1,36}$"
	// The ID of the domain unit in which the connection is created.
	DomainUnitId: string & =~"^[a-z0-9_\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The ID of the environment in which the connection is created.
	EnvironmentId: string & =~"^[a-zA-Z0-9_-]{1,36}$"
	// The role of the user in the environment.
	EnvironmentUserRole: string
	// The ID of the project in which the connection is created.
	ProjectId: string & =~"^[a-zA-Z0-9_-]{1,36}$"
	Type: #ConnectionType
}
