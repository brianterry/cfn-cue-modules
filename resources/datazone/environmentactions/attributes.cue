package environmentactions

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The identifier of the Amazon DataZone domain in which the environment is created.
	DomainId: string & =~"^dzd[-_][a-zA-Z0-9_-]{1,36}$"
	// The identifier of the Amazon DataZone environment in which the action is taking place
	EnvironmentId: string & =~"[a-zA-Z0-9_-]{1,36}$" & strings.MinRunes(1) & strings.MaxRunes(36)
	// The ID of the Amazon DataZone environment action.
	Id: string & =~"^[a-zA-Z0-9_-]{1,36}$" & strings.MinRunes(1) & strings.MaxRunes(36)
}
