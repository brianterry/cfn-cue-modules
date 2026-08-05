package userprofile

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The identifier of the Amazon DataZone domain in which the user profile is created.
	DomainId: string & =~"^dzd[-_][a-zA-Z0-9_-]{1,36}$"
	Type: #UserProfileType
	// The ID of the Amazon DataZone user profile.
	Id: string
	Details: #UserProfileDetails
}
