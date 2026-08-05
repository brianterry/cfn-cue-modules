package groupprofile

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The identifier of the Amazon DataZone domain in which the group profile is created.
	DomainId: string & =~"^dzd[-_][a-zA-Z0-9_-]{1,36}$"
	// The group-name of the Group Profile.
	GroupName: string & =~"^[a-zA-Z_0-9+=,.@-]+$" & strings.MinRunes(1) & strings.MaxRunes(1024)
	// The ID of the Amazon DataZone group profile.
	Id: string & =~"^([0-9a-f]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$"
	// The ID of the role principal for the group profile.
	RolePrincipalId: string
}
